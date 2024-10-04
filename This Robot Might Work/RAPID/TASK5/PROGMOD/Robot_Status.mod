MODULE Robot_Status
    !CUSTOM RECORDS (Must be declared at very top of code)
    RECORD stackLightGrouping
        bool Blue;
        bool Green;
        bool Orange;
        bool Red;
        bool White;
    ENDRECORD

    RECORD stackLightStatus
        !Solid Status
        stackLightGrouping solidColorStatus;

        !Blink Status
        stackLightGrouping blinkColorStatus;
    ENDRECORD

    !TOOLDATA
    PERS tooldata gripper:=[TRUE,[[79.0232,0.441739,168.38],[1,0,0,0]],[2.2,[23.839,0.004,63.847],[1,0,0,0],0,0,0]];

    !WORKOBJECTS
    TASK PERS wobjdata wobj_Press:=[FALSE,TRUE,"",[[1023.59,-656.814,701.558],[0.00181659,-0.896309,0.443405,-0.00432641]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Laser:=[FALSE,TRUE,"",[[989.861,172.39,992.7],[0.000687924,-0.999993,0.00355343,1.14101E-05]],[[0,0,0],[1,0,0,0]]];

    !ROBTARGETS
    CONST robtarget PP_Home:=[[-225.37,329.88,-604.47],[0.00657688,-0.715748,-0.0425303,-0.697031],[-1,1,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LP_Home:=[[-17.92,242.55,-215.49],[0.499741,-0.510371,0.495102,-0.494626],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    PERS Bool jobComplete;

    PERS byte fumexGasOdor;
    PERS byte fumexHEPA;
    PERS byte fumexPower;
    PERS byte fumexPreFilter;
    PERS byte doorButton;
    PERS byte cageDoor1;
    PERS byte cageDoor2;
    PERS byte bushingDoor1;
    PERS byte bushingDoor2;
    PERS byte laserFault;
    PERS byte cameraOnline;
    PERS byte cageLock;
    PERS num PartNumber;
    PERS num oldPartNumber;
    PERS num SwitchTrayCount;

    !Uptime Variables
    PERS string startTime;
    PERS string startDate;
    PERS string currentDate;
    VAR num getStartTime:=1;

    VAR bool convertDateWorked;
    PERS num originalMonth;
    PERS num currentMonth;

    !Runtime Variables
    PERS num secondsRuntime;

    !New Sensor variables (Added March 2022)
    PERS bool airPressure;
    PERS bool filterVelocity;

    !Conveyor Belt #1 Logic
    PERS bool con1EndFull:=FALSE;
    PERS bool con1FrontRowFull:=FALSE;

    VAR clock updateMovementTimer;
    VAR bool startMovementTimerClock:=TRUE;
    VAR num currentJointData{6}:=[0,0,0,0,0,0];
    VAR num oldJointData{6}:=[0,0,0,0,0,0];
    VAR clock timeSinceMovement;
    VAR bool shutDownRan:=FALSE;

    !Conveyor Belt Index Variable
    PERS bool indexConveyor;

    !Checking robot position on cooldown
    VAR pos currentPosition;
    VAR pos pressPickLocation:=[878,-923,774];

    !Error Handling
    PERS num currentErrorNumber:=0;

    PERS bool downForMaintenance;

    !Stack Light Variables
    PERS stackLightStatus stacklights;
    VAR Clock lightBlinkClock;

    PERS bool isStopRequested;
    PERS bool displayStopMessage:=FALSE;

    !On startup we want to set the Solenoids for the gripper air to be on (They don't always enabled until program is activated)
    VAR bool startedAir:=FALSE;

    !Cognex Snapp Variables
    PERS num CognexSnappProgNum;
    VAR num CognexSnappLastProg:=0;

    !Checking marking to make sure the laser actually turned on
    PERS bool markedPart:=TRUE;
    PERS bool markingCheckTimerStarted:=FALSE;
    VAR clock markingCheckTimer;

    VAR intnum err_interrupt;
    VAR trapdata err_data;
    VAR errdomain err_domain;
    VAR num err_number;
    VAR errtype err_type;


    TRAP trap_err
        GetTrapData err_data;
        ReadErrData err_data,err_domain,err_number,err_type;
        !Make sure to shut the conveyor off before erroring out
        SetDO Con1_Index,0;
        SetDO Con2_Index,0;
        TPWrite("Stopped Conveyors Before Erroring Out");
    ENDTRAP


    PROC main()

        CONNECT err_interrupt WITH trap_err;
        IError COMMON_ERR,TYPE_ERR,err_interrupt;

        !*****INIT TIMERS AND AIR PRESSURE*****
        StartupCheck;

        !*****SAFETY VARIABLES UPDATE*****
        cageDoor1:=Door_0;
        cageDoor2:=Door_1;
        cageLock:=Safety_Lock;
        bushingDoor1:=s9;
        bushingDoor2:=s10;

        !*****CUSTOM BUTTONS*****
        doorButton:=Door_Button;

        !*****CAMERA STATUS CHECKS*****
        cameraOnline:=Camera_Online;

        !*****UPDATING STACKLIGHTS*****
        StackLightCheck;

        !*****MOVEMENT AUTO SHUTDOWN CLOCK*****
        MovementCheck;

        !*****FUMEX FILTER*****
        FumexCheck;

        !*****LASER FAULT ERROR HANDLING*****
        LaserFaultHandler;

        !*****CONVEYOR BELT OPERATION*****
        conveyorCheck;

        !*****COGNEX SNAPP MONITORING*****
        CheckCognexSnappProg;

        !*****CHECK TO MAKE SURE MARK WORKED*****
        CheckMarkingProgress;

        !Resetting the switch trays counter on part number change
        IF partNumber=oldPartNumber
        THEN
            !Do nothing here and let it count upwards
        ELSE
            oldPartNumber:=PartNumber;
            SwitchTrayCount:=0;
        ENDIF

        IDelete err_interrupt;
    ENDPROC

    PROC StartupCheck()
        IF startedAir=FALSE
        THEN
            SetDO SolA_8,1;
            SetDO SolA_4,0;
            SetDO SolA_1,0;
            SetDO SolA_2,0;
            startedAir:=TRUE;
        ENDIF

        IF getStartTime=1
        THEN
            getStartTime:=0;
            startTime:=CTime();
            startDate:=CDate();
            secondsRuntime:=0;
        ENDIF
    ENDPROC

    PROC StackLightCheck()
        IF downForMaintenance=TRUE
        THEN
            stacklights.solidColorStatus.Red:=TRUE;
        ELSE
            stacklights.solidColorStatus.Red:=FALSE;
        ENDIF

        IF isStopRequested=TRUE
        THEN
            stacklights.solidColorStatus.Blue:=TRUE;
            stacklights.solidColorStatus.White:=TRUE;
            IF displayStopMessage=FALSE
			THEN
                displayStopMessage:=TRUE;
                !Throw a custom error
                ErrLog 4800,"Auto Stop","Robot Will Now Return to it's home position","Please Wait for the cycle to finish","Do not restart the robot during this process","Robot Should stop within 2 minutes";
            ENDIF
        ELSE
            !Reset the variable that displays the error message creating a toggle effect so that it only displays once
            displayStopMessage:=FALSE;
        ENDIF

        currentErrorNumber:=0;
        IF DriveEnableFeedback=1 AND stacklights.solidColorStatus.Blue=FALSE AND stacklights.solidColorStatus.Orange=FALSE AND stacklights.solidColorStatus.Red=FALSE AND stacklights.solidColorStatus.White=FALSE AND stacklights.blinkColorStatus.Blue=FALSE AND stacklights.blinkColorStatus.Green=FALSE AND stacklights.blinkColorStatus.Orange=FALSE AND stacklights.blinkColorStatus.Red=FALSE AND stacklights.blinkColorStatus.White=FALSE
        THEN
            stacklights.solidColorStatus.Green:=TRUE;
        ELSE
            stacklights.solidColorStatus.Green:=FALSE;
        ENDIF

        IF stacklights.blinkColorStatus.Blue=TRUE OR stacklights.blinkColorStatus.Green=TRUE OR stacklights.blinkColorStatus.Orange=TRUE OR stacklights.blinkColorStatus.Red=TRUE OR stacklights.blinkColorStatus.White=TRUE
    	THEN
            IF ClkRead(lightBlinkClock)>=1
    		THEN
                SetDo Stack_Light_B,0;
                SetDo Stack_Light_G,0;
                SetDo Stack_Light_O,0;
                SetDo Stack_Light_R,0;
                SetDo Stack_Light_W,0;
                ClkReset lightBlinkClock;
                ClkStart lightBlinkClock;
            ELSEIF ClkRead(lightBlinkClock)>=0.5
    		THEN
                IF stacklights.blinkColorStatus.Blue=TRUE
    			THEN
                    SetDo Stack_Light_B,1;
                ENDIF
                IF stacklights.blinkColorStatus.Green=TRUE
    			THEN
                    SetDo Stack_Light_G,1;
                ENDIF
                IF stacklights.blinkColorStatus.Orange=TRUE
    			THEN
                    SetDo Stack_Light_O,1;
                ENDIF
                IF stacklights.blinkColorStatus.Red=TRUE
    			THEN
                    SetDo Stack_Light_R,1;
                ENDIF
                IF stacklights.blinkColorStatus.White=TRUE
    			THEN
                    SetDo Stack_Light_W,1;
                ENDIF
            ELSE
                ClkStart lightBlinkClock;
            ENDIF
        ENDIF

        IF stacklights.solidColorStatus.Blue=TRUE
    	THEN
            SetDo Stack_Light_B,1;
        ELSEIF stacklights.blinkColorStatus.Blue=FALSE
    	THEN
            SetDo Stack_Light_B,0;
        ENDIF

        IF stacklights.solidColorStatus.Green=TRUE
    	THEN
            SetDo Stack_Light_G,1;
        ELSEIF stacklights.blinkColorStatus.Green=FALSE
    	THEN
            SetDo Stack_Light_G,0;
        ENDIF

        IF stacklights.solidColorStatus.Orange=TRUE
    	THEN
            SetDo Stack_Light_O,1;
        ELSEIF stacklights.blinkColorStatus.Orange=FALSE
    	THEN
            SetDo Stack_Light_O,0;
        ENDIF

        IF stacklights.solidColorStatus.Red=TRUE
    	THEN
            SetDo Stack_Light_R,1;
        ELSEIF stacklights.blinkColorStatus.Red=FALSE
    	THEN
            SetDo Stack_Light_R,0;
        ENDIF

        IF stacklights.solidColorStatus.White=TRUE
    	THEN
            SetDo Stack_Light_W,1;
        ELSEIF stacklights.blinkColorStatus.White=FALSE
    	THEN
            SetDo Stack_Light_W,0;
        ENDIF

    ENDPROC

    PROC MovementCheck()
        IF startMovementTimerClock=TRUE
        THEN
            startMovementTimerClock:=FALSE;
            ClkReset updateMovementTimer;
            ClkStart updateMovementTimer;
        ENDIF

        IF ClkRead(updateMovementTimer)>=5
        THEN
            ClkReset updateMovementTimer;
            ClkStart updateMovementTimer;
            startMovementTimerClock:=TRUE;

            !get the current status of the joints and compare (IF they are the same then start the clock, if not reset the clock
            GetJointData\MechUnit:=ROB_1,1\Position:=currentJointData{1};
            GetJointData\MechUnit:=ROB_1,2\Position:=currentJointData{2};
            GetJointData\MechUnit:=ROB_1,3\Position:=currentJointData{3};
            GetJointData\MechUnit:=ROB_1,4\Position:=currentJointData{4};
            GetJointData\MechUnit:=ROB_1,5\Position:=currentJointData{5};
            GetJointData\MechUnit:=ROB_1,6\Position:=currentJointData{6};

            FOR i FROM 1 TO Dim(currentJointData,1) DO
                IF (currentJointData{i}+.05)>=oldJointData{i} AND (currentJointData{i}-.05)<=oldJointData{i}
                THEN
                    ClkStart timeSinceMovement;
                ELSE
                    ClkReset timeSinceMovement;
                    shutDownRan:=FALSE;
                ENDIF

                oldJointData{i}:=currentJointData{i};
            ENDFOR
        ENDIF

        IF ClkRead(timeSinceMovement)>=900 AND shutDownRan=FALSE
        THEN
            !Shutdown robot
            TPWrite("Robot was idle for 15 minutes");
            TPWrite("Robot will close down cell");

            currentPosition:=CPos(\Tool:=gripper\WObj:=wobj0);

            !Is the robot at the bushing press in it's normal pick position (If so it needs to move before it can shut down
            !It should also throw an error because the robot should never stop here
            IF Distance(currentPosition,pressPickLocation)<=30
            THEN
                TPWrite("The robot stopped at the bushing press pick location!");
                TPWrite("Manual Cell Intervention may be required");
            ELSE
                !Shutting down Bushing Press
                SetDO Act_1,0;
                SetDO Act_2,0;
                SetDO Act_3,0;
            ENDIF

            !Shutting down Fumex
            SetDO Fumex_Power,0;
            SetDO Fumex_Filter_Good,0;

            !Shutting down Laser, camera, and part chute
            SetDO Laser_On,0;
            SetDO Camera_SetOffline,1;
            SetGO Part_Chute_All,0;

            shutDownRan:=TRUE;
        ENDIF
    ENDPROC

    PROC FumexCheck()
        fumexGasOdor:=Fumex_GasOdor;
        fumexHEPA:=Fumex_HEPA;
        fumexPower:=Fumex_Power;
        fumexPreFilter:=Fumex_PreFilter;
        IF Fumex_VelocitySensor=1
        THEN
            filterVelocity:=TRUE;
        ELSE
            filterVelocity:=FALSE;
        ENDIF
    ENDPROC

    PROC LaserFaultHandler()
        laserFault:=Laser_DI_LaserFault;

        IF laserFault=0 AND currentErrorNumber=1
        THEN
            currentErrorNumber:=0;
        ENDIF

        !*****AIR PRESSURE SENSOR CHECKS*****
        IF ShopAirPressure=1
        THEN
            airPressure:=TRUE;
        ELSE
            airPressure:=FALSE;
        ENDIF

    ERROR
        currentErrorNumber:=1;
        TPWrite("Problem with the laser (Inside of error handler)");
        WaitTime 60;
        RETRY;
    ENDPROC

    PROC ConveyorCheck()
        IF indexConveyor
        THEN
            !Check each conveyor to see if there is a part in front of the sensor and nothing at the end (Meaning the conveyor can index)
            IF Con1_PartPresent=1 AND Conveyor_Belt1_Full=0
            THEN
                !We can turn the first belt on
                SetDO Con1_Index,1;
            ENDIF

            IF Con2_PartPresent=1 AND Conveyor_Belt2_Full=0
            THEN
                !We can turn the second belt on
                SetDO Con2_Index,1;
            ENDIF

            !Regardless of what happens set index Conveyor to be false
            indexConveyor:=FALSE;
        ENDIF

        !Check to see if we should shut off the belt or not based on it getting full or the part passing the sensor
        IF Conveyor_Belt1_Full=1 OR Con1_PartPresent=0
        THEN
            WaitTime 0.25;
            SetDO Con1_Index,0;
        ENDIF

        IF Conveyor_Belt2_Full=1 OR Con2_PartPresent=0
        THEN
            WaitTime 0.35;
            SetDO Con2_Index,0;
        ENDIF
    ENDPROC

    PROC CheckMarkingProgress()
        IF Laser_DI_MarkActive=1 AND markedPart=FALSE AND markingCheckTimerStarted=FALSE
        THEN
            markingCheckTimerStarted:=TRUE;
            ClkReset markingCheckTimer;
            ClkStart markingCheckTimer;
        ENDIF

        IF ClkRead(markingCheckTimer)>=3 AND Laser_DI_MarkActive=1
        THEN
            markedPart:=TRUE;
            ClkStop markingCheckTimer;
            ClkReset markingCheckTimer;
            markingCheckTimerStarted:=FALSE;
        ELSEIF ClkRead(markingCheckTimer)>=3
        THEN
            ClkStop markingCheckTimer;
            ClkReset markingCheckTimer;
            markingCheckTimerStarted:=FALSE;
        ENDIF
    ENDPROC

    PROC CheckCognexSnappProg()
        IF NOT (CognexSnappLastProg=CognexSnappProgNum)
        THEN
            !We need to change the program
            CognexSnappLastProg:=CognexSnappProgNum;
            SetDO Cognex_Snapp_ChangeProg,0;
            WaitTime 1;

            !Send the Start Pulse
            SetDO Cognex_Snapp_ChangeProg,1;
            WaitTime .04;
            SetDO Cognex_Snapp_ChangeProg,0;

            !Send The Pulse Code
            FOR i FROM 1 TO CognexSnappProgNum DO
                WaitTime .02;
                SetDO Cognex_Snapp_ChangeProg,1;
                WaitTime .02;
                SetDO Cognex_Snapp_ChangeProg,0;
            ENDFOR

            !Send The End Pulse
            WaitTime .02;
            SetDO Cognex_Snapp_ChangeProg,1;
            WaitTime .04;
            SetDO Cognex_Snapp_ChangeProg,0;

            !Wait a few seconds to make sure we don't start writing high again anytime soon
            WaitTime 2;
        ENDIF
    ENDPROC
ENDMODULE