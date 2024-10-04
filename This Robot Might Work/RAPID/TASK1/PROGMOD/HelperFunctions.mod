MODULE HelperFunctions  
    !Robot Alignment (RA)
    CONST robtarget RA_Home_10:=[[-1232.31,-349.13,214.95],[0.500016,0.496358,-0.503585,-0.500015],[0,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RA_Pos1_Appr_10:=[[-1612.82,-816.94,201.66],[0.500044,0.496325,-0.503593,-0.500012],[1,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RA_Pos1_Appr_20:=[[-1664.30,-818.85,205.09],[0.500117,0.496235,-0.503576,-0.500045],[1,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget RA_Home_20:=[[-458.76,736.83,-57.96],[0.631653,-0.307293,0.636035,0.319446],[-1,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RA_Pos2_Appr_10:=[[-185.04,1002.43,-12.97],[0.631691,-0.307321,0.636011,0.319391],[-1,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RA_Pos2_Appr_20:=[[-153.55,1035.17,-15.65],[0.635267,-0.300454,0.639222,0.312345],[-1,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget RA_Home_30:=[[-1479.86,605.03,-48.31],[0.00762058,-0.00261314,0.707606,0.706561],[-2,-1,3,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RA_Pos3_Appr_10:=[[-1859.78,650.94,179.29],[0.00744369,-0.00242501,0.707578,0.706591],[-2,-1,3,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RA_Pos3_Appr_20:=[[-1858.22,687.91,170.48],[0.0074405,-0.00241101,0.707555,0.706615],[-2,-1,3,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !CYCLE TIME VARIABLES
    PERS bool dropCycleCount:=FALSE;
    VAR clock cycleClock;

    !STARTUP CHECK VARIABLES
    VAR num join1Pos;
    VAR pos currentPosition;
    VAR pos homePositionChute:=[136.141,866.001,910.563];
    VAR pos laserHomePosition:=[957.342,125.732,1165.58];
    VAR pos bushingCabinetHomePosition:=[.185,-601.755,1270.78];
    VAR pos drawerHomePosition:=[138.272,-711.956,785.098];

    !USER PRINT OUT / INTERACTION VARIABLES
    VAR num stringsKept:=5;
    PERS string TPString{5}:=["Vision error: Part has been discarded","Vision error: Part has been discarded","Vision error: Part has been discarded","Vision error: Part has been discarded","Robot ran out of jobs from website"];
    PERS string TPTimeStamps{5}:=["17:15:33","17:16:07","17:16:40","17:17:14","17:22:37"];

    !List items for robot startup screens
    VAR num list_item;
    VAR num list_item1;
    VAR btnres button_answer;
    CONST listitem partPickList{26}:=[["","1: C400S"],["","2: 9C400S"],["","3: C400B"],["","4: C600S"],["","5: 9C600S"],["","6: C600B"],["","7: C800S"],["","8: 9C800S"],["","9: C800B"],["","10: N600B"]
        ,["","11:N400S"],["","12:9N400S"],["","13:N600S"],["","14: 9N600S"],["","15: N800S"],["","16: 9N800S"],["","17: F400S"],["","18: 9F400S"],["","19: F400B"],["","20: F600S"]
        ,["","21: 9F600S"],["","22: F600B"],["","23: F800S"],["","24: 9F800S"],["","25: F800B"],["","Run Special X Number"]];
    CONST listitem xNumberPickList{4}:=[["","1: C400B1XB1234"],["","2: C400B1-VXB1235"],["","3: C600B1-VXB1236"],["","4: 9F400SXB032"]];

    !DOWNTIME LOGGER VARIABLES
    PERS num newDTComplete:=0;
    !Reasons can be the following
    !   0 = N/A
    !   1 = idle
    !   2 = pressError
    !   3 = bushingCabinetError
    !   4 = visionError
    !   5 = laserError
    !   6 = conveyorFull
    !   7 = chuteEmpty
    !   8 = AutoStopped
    !   9 = websiteJobComplete
    !   10 = maintenance
    !   11 = conveyor error
    PERS num reason:=0;
    PERS string DTstartDate:="2024-10-03";
    PERS string DTstartTime:="14:25:14";

    PROC startDowntime(num reasonInt)
        reason:=reasonInt;
        DTstartDate:=cDate();
        DTstartTime:=cTime();
    ENDPROC

    PROC endDownTime()
        IF NOT (reason=0)
        THEN
            newDTComplete:=1;
        ENDIF
    ENDPROC

    PROC startCycleTime()
        ClkStop cycleClock;
        ClkReset cycleClock;
        ClkStart cycleClock;
    ENDPROC

    PROC endCycleTime()
        VAR num currentTime:=0;

        ClkStop cycleClock;
        currentTime:=ClkRead(cycleClock);

        IF partNumber>0 AND dropCycleCount=FALSE AND currentTime>0 AND currentTime<300
        THEN
            !We can actually record the cycle time otherwise we just skip it
            !Since we are not keeping an average anymore but a single number just cap how much it can fluctuate per loop by +/- 1
            IF currentTime>(cycletimeAvg{partNumber}+1)
            THEN
                cycleTimeAvg{partNumber}:=cycleTimeAvg{partNumber}+1;
            ELSEIF currentTime<(cycleTimeAvg{partNumber}-1)
            THEN
                cycleTimeAvg{partNumber}:=cycleTimeAvg{partNumber}-1;
            ELSE
                cycleTimeAvg{partNumber}:=currentTime;
            ENDIF
        ENDIF

        dropCycleCount:=FALSE;
        ClkReset cycleClock;
    ENDPROC

    PROC writeToFile(string fileName,string data)
        VAR iodev file;
        VAR num number:=8;
        Open "Home:/"+fileName+".txt",file\Append;
        Write file,data;
        Close file;
    ENDPROC

    PROC PrintTP()
        TPErase;
        FOR i FROM 1 TO 5 DO
            IF TPString{i}=""
            THEN
                !Skip printing this line to avoid extra spaces
            ELSE
                TPWrite(NumToStr(i,0)+" "+TPTimeStamps{i}+": "+TPString{i});
            ENDIF
        ENDFOR
    ENDPROC

    PROC UpdateTP(string inputString)
        !Shift all empty space to top of stack if any
        FOR j FROM 1 TO stringsKept DO
            FOR i FROM 1 TO 5 DO
                IF TPString{i}="" AND i<=4
                THEN
                    TPString{i}:=TPString{i+1};
                    TPString{i+1}:="";
                    TPTimeStamps{i}:=TPTimeStamps{i+1};
                    TPTimeStamps{i+1}:="";
                ENDIF
            ENDFOR
        ENDFOR

        !Check if there is an empty spot at the end still
        IF TPString{5}=""
        THEN
            TPString{5}:=inputString;
            TPTimeStamps{5}:=CTime();

            !Shift all empty space to top of stack if any
            FOR j FROM 1 TO stringsKept DO
                FOR i FROM 1 TO 5 DO
                    IF TPString{i}="" AND i<=4
                    THEN
                        TPString{i}:=TPString{i+1};
                        TPString{i+1}:="";
                        TPTimeStamps{i}:=TPTimeStamps{i+1};
                        TPTimeStamps{i+1}:="";
                    ENDIF
                ENDFOR
            ENDFOR
        ELSE
            !There was no space left so drop off the last message
            TPString{1}:=TPString{2};
            TPString{2}:=TPString{3};
            TPString{3}:=TPString{4};
            TPString{4}:=TPString{5};
            TPString{5}:=inputString;

            TPTimeStamps{1}:=TPTimeStamps{2};
            TPTimeStamps{2}:=TPTimeStamps{3};
            TPTimeStamps{3}:=TPTimeStamps{4};
            TPTimeStamps{4}:=TPTimeStamps{5};
            TPTimeStamps{5}:=CTime();
        ENDIF
    ENDPROC

    PROC EraseTP(string eraseString)
        IF eraseString=""
        THEN
            !Erase everything
            FOR i FROM 1 TO 5 DO
                TPString{i}:="";
                TPTimeStamps{i}:="";
            ENDFOR
        ELSE
            FOR i FROM 1 TO stringsKept DO
                IF TPString{i}=eraseString
                THEN
                    TPString{i}:="";
                    TPTimeStamps{i}:="";
                ENDIF
            ENDFOR
        ENDIF
    ENDPROC

    PROC EventStart()
        UpdateTP("Robot has Started Running");
        PrintTP;
    ENDPROC

    PROC IsPartPresent(num CheckPosition)
        !CheckPosition is the current position that the robot is in, this can help us make custom error messages
        IF DInput(Gripper_PartPresent)=0
        THEN

            !Before stopping, Have the robot close all drawers
            MoveJ BD_Home,v400,fine,gripper\WObj:=wobj_Press;

            Release;
            Close_All_Drawers(0);

            !Before stopping move the robot home
            MoveJ LP_Home,v600,z10,gripper\WObj:=wobj_Laser;
            SetDO Act_1,0;
            SetDO Act_2,0;
            SetDO Act_3,0;

            !There was no part present so we need to write out a custom error message based on CheckPosition

            !This is the position right before Press Placement
            IF CheckPosition=1
            THEN
                UpdateTP("Error: Grippers could not see part before press placement");
                UpdateTP("- Check for part/bushing in laser and press");
                PrintTP;

                stacklights.blinkColorStatus.Orange:=TRUE;

                IF (partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18 OR partNumber=19) AND failedBushingFamilies{1}=FALSE
                THEN
                    failedBushingFamilies{1}:=TRUE;
                ELSEIF (partNumber=10 OR partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21 OR partNumber=22) AND failedBushingFamilies{2}=FALSE
                THEN
                    failedBushingFamilies{2}:=TRUE;
                ELSEIF (partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24 OR partNumber=25) AND failedBushingFamilies{3}=FALSE
                THEN
                    failedBushingFamilies{3}:=TRUE;
                ENDIF

                !This is the position right after Press Placement
            ELSEIF CheckPosition=2
            THEN
                UpdateTP("Error: Grippers could not see part after press pickup");
                UpdateTP("- Check for part/bushing in laser and press");
                PrintTP;

                stacklights.blinkColorStatus.Orange:=TRUE;

                IF (partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18 OR partNumber=19) AND failedBushingFamilies{1}=FALSE
                THEN
                    failedBushingFamilies{1}:=TRUE;
                ELSEIF (partNumber=10 OR partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21 OR partNumber=22) AND failedBushingFamilies{2}=FALSE
                THEN
                    failedBushingFamilies{2}:=TRUE;
                ELSEIF (partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24 OR partNumber=25) AND failedBushingFamilies{3}=FALSE
                THEN
                    failedBushingFamilies{3}:=TRUE;
                ENDIF

                !Catch-All in case this method is used in other places later
            ELSE
                UpdateTP("Error: Grippers could not see part");
                PrintTP;

                !Have the robot clear the laser marker and discard any parts into the chute
                checkPartInLaser;

                !Robot cooldown
                Robot_Cooldown;

                stacklights.blinkColorStatus.Red:=TRUE;

                !Stop Program and exit if the user tries to resume
                Stop;
                EXIT;
            ENDIF

            !Ping for the operator
            PulseDO\PLength:=3,Audible;
        ENDIF
    ENDPROC

    PROC Grip()

        !Updating the runtime clock variables in case an error causes this part of the run to be lost
        secondsRuntime:=secondsRuntime+ClkRead(runtimeClock);
        ClkReset runtimeClock;
        ClkStart runtimeClock;

        !Check the shop air pressure sensor to see if we can even grab this part
        IF airPressure=FALSE
		THEN
            UpdateTP("ERROR: No Air Pressure, robot stopped in current position");
            UpdateTP("Please jog the robot to a safe location, check fixtures");
            PrintTP;
            Robot_Cooldown;
            stacklights.blinkColorStatus.Red:=TRUE;
            !Ping the operator
            PulseDO\PLength:=3,Audible;
            Stop;
            EXIT;
        ELSE
            WaitTime 0.5;
            SetDO Gripper_Actuate,0.5;
            WaitTime 0.2;
        ENDIF
    ENDPROC

    PROC Release()

        !Updating the runtime clock variables in case an error causes this part of the run to be lost
        secondsRuntime:=secondsRuntime+ClkRead(runtimeClock);
        ClkReset runtimeClock;
        ClkStart runtimeClock;

        !Check the shop air pressure sensor to see if we can even release this part
        IF airPressure=FALSE
		THEN
            UpdateTP("ERROR: No Air Pressure, robot stopped in current position");
            UpdateTP("Please jog the robot to a safe location, check fixtures");
            PrintTP;
            Robot_Cooldown;
            stacklights.blinkColorStatus.Red:=TRUE;
            !Ping the operator
            PulseDO\PLength:=3,Audible;
            Stop;
            EXIT;
        ELSE
            WaitTime 0.75;
            SetDO Gripper_Actuate,0;
            WaitTime 0.2;
        ENDIF
    ENDPROC

    !Verifies robot mounting alignment based on 3 locations around the cell. Run in manual and in the cell.
    PROC VerifyRobotAlignment()
        !Display program message. 
        ErrLog 4800,"Program to verify robot alignment","This is a test to verify that the robot has not moved position on its base","Please run in manual mode only","Stand clear of robot during motions","Be ready to stop robot if heading towards collision";
        Stop;

        !Position 1 - Conveyer 1 near part chutes
        Grip;
        MoveJ RA_Home_10,v200,z200,gripper\WObj:=wobj_Laser;
        Stop;
        MoveJ RA_Pos1_Appr_10,v200,z200,gripper\WObj:=wobj_Laser;
        Stop;
        MoveL RA_Pos1_Appr_20,v10,fine,gripper\WObj:=wobj_Laser;
        Stop;
        MoveL RA_Pos1_Appr_10,v200,z200,gripper\WObj:=wobj_Laser;
        MoveJ RA_Home_10,v200,z200,gripper\WObj:=wobj_Laser;

        !Position 2 - Press
        MoveJ RA_Home_20,v200,z200,gripper\WObj:=wobj_Laser;
        Stop;
        MoveJ RA_Pos2_Appr_10,v200,z200,gripper\WObj:=wobj_Laser;
        Stop;
        MoveL RA_Pos2_Appr_20,v10,fine,gripper\WObj:=wobj_Laser;
        Stop;
        MoveL RA_Pos2_Appr_10,v200,z200,gripper\WObj:=wobj_Laser;
        MoveJ RA_Home_20,v200,z200,gripper\WObj:=wobj_Laser;

        !Position 3 - Conveyer 2 near controller
        MoveJ RA_Home_30,v200,z200,gripper\WObj:=wobj_Laser;
        MoveJ RA_Pos3_Appr_10,v200,z200,gripper\WObj:=wobj_Laser;
        Stop;
        MoveL RA_Pos3_Appr_20,v10,fine,gripper\WObj:=wobj_Laser;
        Stop;
        MoveL RA_Pos3_Appr_10,v200,z200,gripper\WObj:=wobj_Laser;
        MoveJ RA_Home_30,v200,z200,gripper\WObj:=wobj_Laser;
        MoveJ RA_Home_20,v200,z200,gripper\WObj:=wobj_Laser;
        MoveJ RA_Home_10,v200,z200,gripper\WObj:=wobj_Laser;
        Stop;

    ENDPROC

ENDMODULE