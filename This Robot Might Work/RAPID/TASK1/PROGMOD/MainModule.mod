MODULE MainModule
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

    !**********ROBOT CODE DOCUMENTATION**********
    !PROGRAM LAYOUT
    !This program is split into multiple modules to help with readability and debugging they are the following:
    !   1. Bushing Cabinet Methods  |   Opening and closing drawers, picking bushings from a tray, keeping track of which tray and which bushing the robot is
    !                               |   currently on
    !   2. Conveyor Methods         |   Placement positions on the belt, avoiding the bushing drawers, indexing the conveyor
    !   3. Helper Functions         |   Cycle time and part discard / production tracking, startup / shutdown functions, flex pendent printouts,
    !                               |   downtime tracking, any msc function that is not website related
    !   4. Laser Methods            |   Laser startup, cooldown, focusing, loading and starting jobs, fumex related tasks, error handling for
    !                               |   communication between robot and laser
    !   5. Main Module              |   This file, currently has two main functions, one for the website and one for the non-website cycles,
    !                               |   startup and shutdown methods
    !   6. Part Chute Methods       |   Picking parts from the parts chute, updating the lights on the chute to display which rows are empty
    !   7. Press Methods            |   Placing bushings into fixtures, placing parts on fixtures and pressing them, removing parts from fixtures,
    !                               |   checking with laser prox sensor that part was pressed correctly, error handling for incorrect presses,
    !                               |   setting pressure of solenoids for different materials
    !   8. Vision Methods           |   Checking with camera if parts are the correct ones for the job and in correct orientation,
    !                               |   handing regrips and rechecks if incorrect orientation, checking material type with brass sensor,
    !                               |   loading and unloading camera jobs
    !
    !NAMING CONVENTIONS
    !   - Robot targets
    !       HOME        Designated the starting position for a procedure in relation to a specific work object
    !       APP         Approach move used to get to the destination point
    !       PICK/DROP   The point where the part will be picked up or dropped
    !       DEP         Departure points used to move away from the pick/drop point
    !   - Variables
    !       One word, all lowercase except when starting a new word (Example: airQuality) The Q is capitalized because it is a new word
    !       VARIABLE NAMES THAT INCLUDE PART NUMBERS: Separate the numbers with an underscore (Example test_C400S_Parts) (Example test_C600B)
    !   - CONSTANTS
    !       One word, all uppercase
    !       VARIABLE NAMES THAT INCLUDE PART NUMBERS: Separate the part numbers with an underscore (Example TEST_C400S_PARTS) (Example TEST_C600B)
    !   - Methods
    !       one or multiple words broken up by underscores (Example Vision_For_C400B)
    !       first letter of each word capitalized, part numbers/names fully capitalized
    !
    !BASIC ROBOT WORKFLOW BREAKDOWN
    !   1.  Starup              |   Check all inputs, get confirmation of part to start on from user or website, begin making part
    !   2.  Pick Part           |   Move to part chute, grab appropriate part from chute
    !   3.  Vision              |   Move to Vision methods and check part is oriented correctly, regrip if needed
    !   4.  Laser               |   Move to laser, place part in laser, Power on laser, pick job, start mark
    !   5.  Bushing             |   If a bushing is needed open appropriate drawer and pick the bushing
    !   6.  Press Dropoff       |   If the bushing was needed, place it into the press
    !   7.  Pick Part           |   Move back to chute and pick the correct part
    !   8.  Vision              |   See Previous
    !   9.  Laser               |   See Previous
    !   10. Part Pickup         |   Pickup the part from the laser once it is done, start next marking cycle on the laser at the same time
    !   11. Press Part          |   Drop part at press, cycle the press, pick part from press, and check if the bushing is on the part
    !   12. Conveyor Dropoff    |   Drop the part at the correct index on the conveyor
    !   13. Repeat              |   Repeat steps 7 through 13 until out of parts of that type in current chute
    !   14  Repeat              |   Repeat steps 1 through 13 until there are no more parts in any chute
    !
    !HELPER / MAINTENANCE FUNCTIONS
    !There are helpful functions that only run when points need adjusted, these can be turned on by changing the following variables to true
    !   1. BushingPickupPointAdjustment()   |   This is used to adjust the bushing tray positions and test whether cycling through drawers works
    VAR bool runBushingPickAdjustment:=FALSE;
    !       This function will provide 10 options
    !           1. Test drawer 1 locations (This will move through the pick motion for drawer 1 and allow you to modify them individually (Changes will apply to all offset positions for that drawer)
    !           2. Test drawer 2 locations
    !           3. Test drawer 3 locations
    !           4. Test drawer 4 locations
    !           5. Test drawer 5 locations
    !           6. Test drawer 6 locations
    !           7. Pick all 400 Bushings (This will pick all 400 size bushings out of both drawers and then return to it's home location, this allows you to check if the drawers cycle correctly and if all of the pick locations are good across the whole drawer
    !           8. Pick all 600 Bushings
    !           9. Pick all 800 Bushings
    !           10. Custom function (This lets you add in code to move to specific points and customize the test in case something was not covered in the above functions. You will need to go to the bottom of the method in the BushingCabinetMethods file and add in your own custom code for this

    !   2. runConveyorAdjustment()  |   this is used to adjust the conveyor belt placement positions, there is a separate test for belt #1 and #2
    VAR bool runConveyorAdjustment:=FALSE;
    !       This function will provide 3 options
    !           1. Test Conveyor #1 Positions (This will move through the placement motions for a check valve and then a flow valve and allow you to modify them individually (Changes will apply to all offset positions for that belt)
    !           2. Test Conveyor #2 Positions
    !           3. Custom function (This lets you add in code to move to specific points and customize the test in case something was not covered in the above functions. You will need to go to the bottom of the method in the ConveyorBeltMethods file and add in your own custom code for this

    !   3. runVerifyRobotAlignment()  |   This is used to verify the alignment of the robot. Attach bracket with center pin to grippers. .250" plate with .500 pin in center.
    !   Walk through program in manual mode to verify pin alignment with points around cell.
    VAR bool runVerifyRobotAlignment:=FALSE;
    !	Run on manual and in the cell to observe
    !		Location 1: Conveyer 1
    !		Location 2: Bushing press
    !		Location 3: Conveyer 2
    !   4. runWithWebsiteEnabled    |   The old method of switching mains to start looping was becoming obsolete when not updated with the rest of the code, to avoid possible crashes we are cominbing both mains with a few extra if statements to allow for both functionalities in one
    VAR bool runWithWebsiteEnabled:=TRUE;


    !**********BEGIN MAIN MODULE**********
    CONST robtarget Home:=[[79.04,-12.95,-41.08],[0.499345,-0.503099,-0.50367,0.493825],[-1,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !TOOLDATA
    PERS tooldata gripper:=[TRUE,[[79.0232,0.441739,168.38],[1,0,0,0]],[2.2,[23.839,0.004,63.847],[1,0,0,0],0,0,0]];

    !WORK OBJECT DATA
    TASK PERS wobjdata wobj_Conveyor1:=[FALSE,TRUE,"",[[-1035.09,870.76,902.429],[0.000151831,0.700108,0.714035,0.00175207]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Conveyor2:=[FALSE,TRUE,"",[[-865.743,-893.68,906.281],[0.0036673,-0.0113488,0.999926,-0.00219757]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Laser:=[FALSE,TRUE,"",[[989.861,172.39,992.7],[0.000687924,-0.999993,0.00355343,1.14101E-05]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_PartChute:=[FALSE,TRUE,"",[[-362.65,1332.14,754.602],[0.133258,-0.68956,-0.699071,-0.134345]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Vision:=[FALSE,TRUE,"",[[989.861,172.39,992.7],[0.000687924,-0.999993,0.00355343,1.14101E-05]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Bushing:=[FALSE,TRUE,"",[[497.782,-1403.09,1213.47],[0.0050127,-0.00434753,0.701428,-0.712709]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Press:=[FALSE,TRUE,"",[[1023.59,-656.814,701.558],[0.00181659,-0.896309,0.443405,-0.00432641]],[[0,0,0],[1,0,0,0]]];

    !TASK PERS wobjdata wobj_OldVision:=[FALSE,TRUE,"",[[1005.46,-85.1133,1673.04],[0.00860257,-0.00742451,0.00228848,0.999933]],[[0,0,0],[1,0,0,0]]];
    !CONST robtarget OldVision1:=[[70.09,21.23,-6.22],[0.704839,-0.00176778,-0.00306443,-0.709358],[-1,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];


    TASK PERS wobjdata wobj_Tray1_Front:=[FALSE,TRUE,"",[[277.058,-899.583,1180.24],[0.000270625,0.70994,-0.704258,0.00237465]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Tray1_Back:=[FALSE,TRUE,"",[[279.708,-1233.88,1183.97],[0.00686865,-0.712024,0.70212,0.00148619]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Tray2_Front:=[FALSE,TRUE,"",[[328.825,-895.291,1052.6],[0.00656012,5.06566E-06,-1.16383E-05,-0.999978]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Tray2_Back:=[FALSE,TRUE,"",[[287.545,-1232.48,1052.99],[0.00468313,-4.67767E-06,-0.000132411,-0.999989]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Tray3_Front:=[FALSE,TRUE,"",[[268.508,-917.585,909.798],[0.000124313,0.709462,-0.704744,-7.64001E-06]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Tray3_Back:=[FALSE,TRUE,"",[[273.504,-1246.29,915.681],[0.000886791,-0.710448,0.703749,-0.000689669]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Tray4_Front:=[FALSE,TRUE,"",[[276.733,-901.029,770.604],[5.77363E-05,0.711242,-0.702947,1.5604E-05]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Tray4_Back:=[FALSE,TRUE,"",[[237.408,-1240.28,773.985],[8.03977E-05,-0.710465,0.703732,9.87977E-06]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Tray5_Front:=[FALSE,TRUE,"",[[322.69,-900.151,651.319],[2.38132E-05,-0.709883,0.70432,2.00239E-05]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Tray5_Back:=[FALSE,TRUE,"",[[280.503,-1234.93,652.272],[2.84087E-05,-0.710995,0.703197,1.90274E-05]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Tray6_Front:=[FALSE,TRUE,"",[[267.376,-921.575,511.081],[0.000509156,0.711579,-0.702605,-0.000494202]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Tray6_Back:=[FALSE,TRUE,"",[[271.327,-1251.87,511.556],[0.000395572,0.711453,-0.702734,-0.000489908]],[[0,0,0],[1,0,0,0]]];

    !STACKLIGHT CONTROLS
    PERS stackLightStatus stacklights:=[[FALSE,TRUE,FALSE,FALSE,FALSE],[FALSE,FALSE,FALSE,FALSE,FALSE]];

    !OTHER BACKGROUND TASK VARIABLES
    PERS byte doorButton;
    PERS byte cageDoor1;
    PERS byte cageDoor2;
    PERS byte laserFault;
    PERS byte cageLock;

    !X NUMBER VARIABLES
    ! Only one X Number can be run at a time and the robot will only try to grab the parts for that X Number
    ! No other standard parts can be run while an X number is enabled
    !0 = None
    !1 = C400B1XB1234
    !2 = C400B1-VXB1235
    !3 = C600B1-VXB1236
    !4 = 9F400SXB032
    PERS num xNumberEnabled:=0;

    !MSC VARIABLES
    !Variable representing the number of times the Vision Error program has dropped a part
    VAR byte visionDiscardCount;
    VAR byte rotate;
    PERS bool airPressure;
    PERS bool filterVelocity;

    !DOWNTIME TRACKING
    VAR clock runtimeClock;
    VAR clock masterRuntimeClock;
    PERS num currentErrorNumber;

    !ROBOT RUNTIME VARIABLES
    VAR bool endPartSoon:=FALSE;
    VAR bool endPartSoonWithBushing:=FALSE;
    VAR bool skipToNextPart:=FALSE;
    VAR bool partsFoundOnRun:=FALSE;
    PERS bool madePart:=TRUE;
    PERS bool skipChecks:=FALSE;
    VAR byte chuteEmpty;
    PERS bool downForMaintenance:=FALSE;
    PERS bool startProgramatically:=FALSE;
    PERS num startProgramaticallyPartNum:=2;
    PERS num partNotMarkedCounter:=0;

    !COGNEX SNAPP VARIABLES AND LISTENERS
    !These have to be here because they are accessed in the main class not the press class
    PERS num CognexSnappProgNum:=6;
    !Status values (0 = not recieved, 1 = pass, 2 = fail, 3 = error / unclassified)
    PERS num snapStatus:=0;
    VAR intnum passSignal;
    VAR intnum failSignal;
    VAR intnum errorSignal;
    PERS bool retryPress:=FALSE;
    PERS num retryPressCountInRow:=0;

    !Variables to shorten startup time for robot
    PERS bool runStartupAsync:=FALSE;
    PERS tasks task_sync_list{2}:=[["T_ROB1"],["T_StartupAsync"]];
    VAR syncident sync1;

    TRAP SnappPassSignalListener
        snapStatus:=1;
    ENDTRAP

    TRAP SnappFailSignalListener
        snapStatus:=2;
    ENDTRAP

    TRAP SnappErrorSignalListener
        snapStatus:=3;
    ENDTRAP

    !PART NUMBER KEY
    !1=C400S, 2=9C400S, 3=C400B, 4=C600S, 5=9C600S, 6=C600B, 7=C800S, 8=9C800S, 9=C800B, 10=N600B
    !11= N400S, 12= 9N400S, 13= N600S, 14=9N600S, 15=N800S, 16=9N800S, 17=F400S, 18=9F400S, 19=F400B, 20=F600S
    !21=9F600S, 22=F600B, 23=F800S, 24=9F800S, 25=F800B, 26=C400B1XB1234, 27=C400B1-VXB1235

    PROC main()
        VAR pos pos1;
        VAR bool firstRun:=TRUE;
        xNumberEnabled:=0;
        failedBushingFamilies:=[FALSE,FALSE,FALSE];
        failedPartNums:=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

        dropCycleCount:=TRUE;
        runStartupAsync:=FALSE;

        !Turning off the lights on the chute before requesting part numbers
        SetGO Part_Chute_All,0;

        !Setting the first mark check to true so that it runs
        markedPart:=TRUE;

        enableListeners;

        !If the user is running in non website mode reset the chute full when they PP to main (So at beginning of program)
        IF NOT (runWithWebsiteEnabled)
        THEN
            chuteFull:=FALSE;
        ENDIF

        IF runBushingPickAdjustment
        THEN
            !Running the bushing adjustment program
            BushingPickupPointAdjustment;
            Stop;
            EXIT;
        ENDIF

        IF runConveyorAdjustment
        THEN
            !Running the conveyor adjustment program
            ConveyorAdjustment;
            Stop;
            EXIT;
        ENDIF

        IF runVerifyRobotAlignment
        THEN
            !Running the Robot Alignment verification program
            VerifyRobotAlignment;
            Stop;
            EXIT;
        ENDIF

        IF downForMaintenance=TRUE
        THEN
            UpdateTP("Robot is currently down for maintenance");
            PrintTP;
            Stop;
            EXIT;
        ENDIF

        !Mark the downtime as completed
        endDownTime;

        StartOfProgram:


        IF isStopRequested=TRUE
        THEN
            isStopRequested:=FALSE;
            Robot_Cooldown;
            startDowntime(8);
            Stop;
        ENDIF

        EraseTP("");
        RequestJob;
        IF startupJobRequested=FALSE AND currentJob{2}=0
		THEN
            UpdateTP("Job from website was empty");
            PrintTP;

            PulseDO\PLength:=3,Audible;

            stacklights.solidColorStatus.Orange:=TRUE;
            stacklights.blinkColorStatus.Green:=FALSE;
            stacklights.solidColorStatus.Green:=FALSE;

            startDowntime(9);
            Stop;
            GOTO StartOfProgram;
        ELSEIF startupJobRequested=FALSE
        THEN
            !Run robot startup sequence
            Robot_Startup;

            !Set part number and X Number if needed
            NewJobStart:
            !First things first check if there is a part in the laser that needs removed berfore starting a new job
            IF runStartupAsync=FALSE
            THEN
                checkPartInLaser;
            ENDIF

            partNumber:=currentJob{2};
            xNumberEnabled:=currentJob{5};

            madePart:=FALSE;
            skipBushingOnce:=FALSE;

            !Check if the Vision for this part number has failed since the last time the robot was started (Lets not fill up the discard shoot to overflowing :P)
            !There was an error where the job was set to all 0s at one point. Added in a check for this that grabs a new job if that happens
            IF (partNumber=0)
            THEN
                RequestJob;
                GOTO StartOfProgram;
            ENDIF

            IF failedPartNums{partNumber}=1
            THEN
                getNextJob;
                IF requestNextJob=FALSE
                THEN
                    !We can start another job, else it will just exit
                    GOTO NewJobStart;
                ENDIF
                Robot_Cooldown;
            ENDIF

            IF ConveyorCheck()=FALSE
            THEN
                getNextJob;
                IF requestNextJob=FALSE
                THEN
                    !We can start another job, else it will just exit
                    GOTO NewJobStart;
                ENDIF
                Robot_Cooldown;
            ENDIF

            !Checking if we need to skip this part number due to Vision failure
            FOR i FROM 1 TO Dim(failedPartNums,1) DO
                IF failedPartNums{i}=partNumber
				THEN
                    !We cannot start this job
                    getNextJob;
                    IF requestNextJob=FALSE
                    THEN
                        !We can start another job, else it will just exit
                        GOTO NewJobStart;
                    ENDIF
                    Robot_Cooldown;
                ENDIF
            ENDFOR

            Vision_Startup;
            chuteEmpty:=0;
            VisionFailure:=0;
            con1YIndex:=0;
            con2YIndex:=0;
            visionDiscardCount:=0;
            VisionErrorOnLastPart:=0;

            !Load the camera job dependent on part number
            Vision_LoadJob;

            !Pick the part body dependent on part number
            IF ConveyorCheck()
            THEN
                Chute;
            ELSE
                chuteEmpty:=1;
            ENDIF

            IF chuteEmpty=0
			THEN
                !Set the VisionWait variable for first part Cognex correction
                VisionWait:=4;
                !Scan the valve body with Cognex to check orientation and place on laser fixture

                NewVision;

                !If Vision has not failed then we can continue, otherwise it loops to the next part
                IF VisionFailure=0 AND VisionErrorOnLastPart=0
				THEN
                    !Check to make sure laser is on
                    !Checking if laser is connected to robot
                    IF currentErrorNumber=1
					THEN
                        UpdateTP("Laser Disconnected, waiting until reconnected");
                        PrintTP;

                        FOR k FROM 1 TO 4 DO
                            WaitTime 60;
                            IF currentErrorNumber=1
							THEN
                            ELSE
                                GOTO LaserConnectCheck1;
                            ENDIF
                        ENDFOR
                        Robot_Cooldown;

                        stacklights.blinkColorStatus.Orange:=TRUE;
                        !Putting up an alarm for the operator
                        PulseDO\PLength:=3,Audible;
                        startDowntime(5);
                        Stop;
                        EXIT;
                    ENDIF
                    LaserConnectCheck1:
                    !Start laser marking the part dependent on part number
                    Laser_Mark;
                    !Check to make sure the Fumex Filter is still ok
                    Check_Fumex_Filter;

                    InnerPartLoop:
                    !Basically making an infinite loop that only breaks if Vision fails, or it runs out of this part number
                    !Check to see if the current part fits onto an available conveyor belt, if not end the part number
                    IF ConveyorCheck()=FALSE
                    THEN
                        endPartSoonWithBushing:=TRUE;
                        GOTO EndPartNumber;
                    ENDIF

                    !Check if this part is allowed to have a bushing
                    FOR i FROM 1 TO Dim(bushingEnabled,1) DO
                        IF bushingEnabled{i}=partNumber
						THEN
                            IF (partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18 OR partNumber=19) AND failedBushingFamilies{1}=FALSE AND totalSkips_400<maxSkips_400
							THEN
                                Bushing;
                                !Check if the bushing could not be found
                                IF failedBushingFamilies{1}=TRUE
                                THEN
                                    endPartSoon:=TRUE;
                                ENDIF
                            ELSEIF (partNumber=10 OR partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21 OR partNumber=22) AND failedBushingFamilies{2}=FALSE AND totalSkips_600<maxSkips_600
							THEN
                                Bushing;
                                !Check if the bushing could not be found
                                IF failedBushingFamilies{2}=TRUE
                                THEN
                                    endPartSoon:=TRUE;
                                ENDIF
                            ELSEIF (partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24 OR partNumber=25) AND failedBushingFamilies{3}=FALSE AND totalSkips_800<maxSkips_800
							THEN
                                Bushing;
                                !Check if the bushing could not be found
                                IF failedBushingFamilies{3}=TRUE
                                THEN
                                    endPartSoon:=TRUE;
                                ENDIF
                            ENDIF
                        ENDIF
                    ENDFOR

                    !Check if we ran out of bushings for this part
                    IF endPartSoon
                    THEN
                        GOTO EndPartNumber;
                    ENDIF

                    !Making sure the drawers are closed during check valves to avoid a crash
                    IF partNumber<10
					THEN
                        Close_All_Drawers(0);
                    ENDIF

                    !Checking which conveyor the robot is coming from to see if we need to move to this location or not before going to chute
                    IF lastPlacedBelt=1 AND (partNumber<11 OR partNumber=19 OR partNumber=22 OR partNumber=25)
                    THEN
                        !Don't go to this point and just let it do whatever, otherwise travel through the point
                    ELSE
                        !Make sure that bushings for this size have not failed
                        IF (partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18 OR partNumber=19) AND failedBushingFamilies{1}=FALSE AND totalSkips_400<maxSkips_400
						THEN
                            !Do nothing because we are not picking up bushings
                        ELSEIF (partNumber=10 OR partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21 OR partNumber=22) AND failedBushingFamilies{2}=FALSE AND totalSkips_600<maxSkips_600
						THEN
                            !Do nothing because we are not picking up bushings
                        ELSEIF (partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24 OR partNumber=25) AND failedBushingFamilies{3}=FALSE AND totalSkips_800<maxSkips_800
						THEN
                            !Do nothing because we are not picking up bushings
                        ELSE
                            PathAccLim TRUE\AccMax:=2.5,TRUE\DecelMax:=2.5;
                            MoveJ Bushing_Path,vmax,z200,gripper\WObj:=wobj_Laser;
                            PathAccLim FALSE,FALSE;
                        ENDIF
                    ENDIF

                    FOR i FROM 1 TO Dim(failedPartNums,1) DO
                        IF failedPartNums{i}=partNumber
						THEN
                            GOTO EndPartNumber;
                        ENDIF
                    ENDFOR

                    IF ConveyorCheck()
                    THEN
                        endCycleTime;
                        startCycleTime;
                        Chute;
                    ELSE
                        chuteEmpty:=1;
                    ENDIF

                    !If the part was not picked up then go to the end of this loop, otherwise continue
                    IF chuteEmpty=1
						THEN
                        GOTO EndPartNumber;
                    ENDIF
                    VisionWait:=2;
                    !Sets the Vision wait variable to allow for faster Cognex scanning
                    !OR partNumber=9 OR partNumber=3

                    NewVision;

                    IF skipToNextPart
					THEN
                        GOTO EndPartNumber;
                    ENDIF

                    !If Vision has failed then go to the end of this loop, otherwise continue
                    IF VisionFailure=1
					THEN
                        failedPartNums{partNumber}:=1;
                        GOTO EndPartNumber;
                    ENDIF

                    !If part was discarded on the last part GOTO the last part number section
                    IF VisionErrorOnLastPart=1
						THEN
                        VisionErrorOnLastPart:=0;
                        GOTO EndPartNumber;
                    ENDIF

                    !Checking if laser is connected to robot
                    IF currentErrorNumber=1
					THEN
                        UpdateTP("Laser Disconnected, waiting until reconnected");
                        PrintTP;

                        FOR k FROM 1 TO 4 DO
                            WaitTime 60;
                            IF currentErrorNumber=1
							THEN
                            ELSE
                                GOTO LaserConnectCheck3;
                            ENDIF
                        ENDFOR
                        Robot_Cooldown;

                        stacklights.blinkColorStatus.Orange:=TRUE;

                        !Putting up a sound for the operator
                        PulseDO\PLength:=3,Audible;
                        startDowntime(5);
                        Stop;
                        EXIT;
                    ENDIF
                    LaserConnectCheck3:

                    Check_Fumex_Filter;
                    !Check if a laser error has occured
                    WaitTime 1;
                    IF Laser_DI_SwitchTriggered=0
					THEN
                        UpdateTP("Laser Door switches are triggered. Close doors to continue");
                        PrintTP;
                        !Check if a laser error has occured
                        WaitGI Laser_GI_Response,20204;
                        WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                        !Wait for handshake response to match what was sent

                        EraseTP("Laser Door switches are triggered. Close doors to continue");
                        PrintTP;

                    ELSEIF laserFault=1
					THEN
                        UpdateTP("Laser Fault has occured, check status screen on laser computer");
                        PrintTP;
                        WaitGI Laser_GI_Response,20204;
                        !Wait for part to be marked and door to rotate
                        WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                        !Wait for handshake response to match what was sent
                        EraseTP("Laser Fault has occured, check status screen on laser computer");
                        PrintTP;
                    ELSE
                        WaitGI Laser_GI_Response,20204;
                        !Wait for part to be marked and door to rotate
                        WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                        !Wait for handshake response to match what was sent
                    ENDIF

                    !Checking if laser is connected to robot
                    IF currentErrorNumber=1
					THEN
                        UpdateTP("Laser Disconnected, waiting until reconnected");
                        PrintTP;

                        FOR k FROM 1 TO 4 DO
                            WaitTime 60;
                            IF currentErrorNumber=1
							THEN
                            ELSE
                                GOTO LaserConnectCheck2;
                            ENDIF
                        ENDFOR
                        Robot_Cooldown;

                        stacklights.blinkColorStatus.Orange:=TRUE;

                        !Putting up a sound for the operator
                        PulseDO\PLength:=3,Audible;
                        startDowntime(5);
                        Stop;
                        EXIT;
                    ENDIF
                    LaserConnectCheck2:

                    Laser_Mark;
                    IF partNumber<10
					THEN
                        Close_All_Drawers(0);
                    ENDIF

                    Laser_Pickup;

                    !If the last part can't be confirmed as marked then pickup > discard > retry grabbing the next part, otherwise continue on like normal
                    IF partNotMarkedCounter>0
                    THEN
                        UpdateTP("Could not confirm laser marked last part");
                        PrintTP;

                        !Discard the part after grabbing it
                        MoveJ VS_Home,v600,z10,gripper\WObj:=wobj_Vision;
                        MoveJ VS_Failure10,v600,z10,gripper\Wobj:=wobj_Vision;
                        MoveJ VS_Failure20,v600,fine,gripper\Wobj:=wobj_Vision;
                        Release;
                        MoveJ VS_Failure30,v600,fine,gripper\Wobj:=wobj_Vision;
                        
                        !Move back to laser home
                        MoveJ LP2_Home,v600,fine,gripper\WObj:=wobj_Laser;
                        
                        GOTO InnerPartLoop;
                    ENDIF

                    !Check if this part is allowed to have a bushing
                    FOR i FROM 1 TO Dim(bushingEnabled,1) DO
                        IF bushingEnabled{i}=partNumber
						THEN
                            IF (partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18 OR partNumber=19) AND failedBushingFamilies{1}=FALSE
							THEN
                                PressPart;
                            ELSEIF (partNumber=10 OR partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21 OR partNumber=22) AND failedBushingFamilies{2}=FALSE
							THEN
                                PressPart;
                            ELSEIF (partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24 OR partNumber=25) AND failedBushingFamilies{3}=FALSE
							THEN
                                PressPart;
                            ENDIF
                        ENDIF
                    ENDFOR

                    !Check to make sure the part was pressed correctly and we don't need to end it early
                    IF skipBushingOnce
                    THEN
                        endPartSoonWithBushing:=TRUE;
                    ENDIF

                    Conveyor;

                    !We made it to the conveyor so time to update the part count for both the robot and website
                    currentJob{4}:=currentJob{4}+1;

                    !Check if a stop has been requested because this is a good break time
                    IF isStopRequested=TRUE
                    THEN
                        endPartSoonWithBushing:=TRUE;
                        GOTO EndPartNumber;
                    ENDIF

                    !Check if we need to end the job
                    IF (currentJob{4}+1)>=currentJob{3}
                    THEN
                        endPartSoonWithBushing:=TRUE;
                        GOTO EndPartNumber;
                    ENDIF

                    !Mark down that a part was produced
                    madePart:=TRUE;

                    IF endPartSoon=TRUE OR endPartSoonWithBushing=TRUE OR isStopRequested=TRUE
					THEN
                        endPartSoonWithBushing:=TRUE;
                        GOTO EndPartNumber;
                    ELSE
                        GOTO InnerPartLoop;
                    ENDIF

                    EndPartNumber:

                    !The part is ending so reset the force trigger
                    endPartSoon:=FALSE;

                    IF endPartSoonWithBushing=TRUE
                    THEN
                        FOR i FROM 1 TO Dim(bushingEnabled,1) DO
                            IF bushingEnabled{i}=partNumber
                            THEN
                                IF (partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18 OR partNumber=19) AND failedBushingFamilies{1}=FALSE
                                THEN
                                    Bushing;
                                    !Check if the bushing could not be found
                                    IF failedBushingFamilies{1}=TRUE
                                    THEN
                                        endPartSoonWithBushing:=TRUE;
                                    ENDIF
                                ELSEIF (partNumber=10 OR partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21 OR partNumber=22) AND failedBushingFamilies{2}=FALSE
                                THEN
                                    Bushing;
                                    !Check if the bushing could not be found
                                    IF failedBushingFamilies{2}=TRUE
                                    THEN
                                        endPartSoonWithBushing:=TRUE;
                                    ENDIF
                                ELSEIF (partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24 OR partNumber=25) AND failedBushingFamilies{3}=FALSE
                                THEN
                                    Bushing;
                                    !Check if the bushing could not be found
                                    IF failedBushingFamilies{3}=TRUE
                                    THEN
                                        endPartSoonWithBushing:=TRUE;
                                    ENDIF
                                ENDIF
                            ENDIF
                        ENDFOR
                    ENDIF

                    endPartSoonWithBushing:=FALSE;

                    !Close Drawers and reset cell for next part
                    Close_All_Drawers(0);
                    WaitGI Laser_GI_Response,20204;
                    !Wait for part to be marked and door to rotate
                    WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                    !Wait for handshake response to match what was sent
                    RotateDoor;
                    Laser_Pickup;

                    !Check if this part is allowed to have a bushing
                    FOR i FROM 1 TO Dim(bushingEnabled,1) DO
                        IF bushingEnabled{i}=partNumber
						THEN
                            IF (partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18 OR partNumber=19) AND failedBushingFamilies{1}=FALSE
							THEN
                                PressPart;
                            ELSEIF (partNumber=10 OR partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21 OR partNumber=22) AND failedBushingFamilies{2}=FALSE
							THEN
                                PressPart;
                            ELSEIF (partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24 OR partNumber=25) AND failedBushingFamilies{3}=FALSE
							THEN
                                PressPart;
                            ENDIF
                        ENDIF
                    ENDFOR

                    Conveyor;

                    !We made it to the conveyor so time to update the part count for both the robot and website
                    currentJob{4}:=currentJob{4}+1;

                    !Incriment the belt to add a space between part numbers
                    indexConveyor:=TRUE;
                    !Waiting until the conveyor stops moving to continue on
                    WaitDO Con1_Index,0;
                    WaitDO Con2_Index,0;

                    Set_Actuator(0);
                    skipToNextPart:=FALSE;

                    !Checking which conveyor the robot is coming from to see if we need to move to this location or not before going to chute
                    IF lastPlacedBelt=1 AND partNumber<10
                    THEN
                        !Don't go to this point and just let it do whatever, otherwise travel through the point
                    ELSE
                        PathAccLim TRUE\AccMax:=2.5,TRUE\DecelMax:=2.5;
                        MoveJ LD2_Home,vmax,fine,gripper\WObj:=wobj_Laser;
                        PathAccLim FALSE,FALSE;
                    ENDIF
                    PathAccLim TRUE\AccMax:=2.5,TRUE\DecelMax:=2.5;
                    MoveJ PC_Home,vmax,z10,gripper\WObj:=wobj_PartChute;
                    PathAccLim FALSE,FALSE;


                    IF isStopRequested=TRUE
					THEN
                        !Go back to the beginning of the program and stop
                        GOTO StartOfProgram;
                    ENDIF

                    !Make sure the robot completed the job instead of just running out of parts
                    IF (currentJob{4}+1)>=currentJob{3}
                    THEN
                        !Mark job as complete
                        jobComplete:=TRUE;
                        WaitTime 30;
                        IF jobComplete=TRUE
                        THEN
                            !We don't have connection with the website so we cannot continue to run jobs
                            Robot_Cooldown;
                            Stop;
                            EXIT;
                        ELSE
                            !Check to make sure we don't need to stop for the chute
                            IF chuteFull=TRUE
                            THEN
                                Robot_Cooldown;
                                Stop;
                                EXIT;
                            ENDIF
                            getNextJob;
                            IF requestNextJob=FALSE
                            THEN
                                !We can start another job, else it will just exit
                                GOTO NewJobStart;
                            ENDIF
                            Robot_Cooldown;
                        ENDIF
                    ELSE
                        !The robot ran out of parts so get the next job
                        getNextJob;
                        IF requestNextJob=FALSE
                        THEN
                            !We can start another job, else it will just exit
                            GOTO NewJobStart;
                        ENDIF
                        Robot_Cooldown;
                    ENDIF
                ELSE
                    !Get next job
                    getNextJob;
                    IF requestNextJob=FALSE
                    THEN
                        !We can start another job, else it will just exit
                        GOTO NewJobStart;
                    ENDIF
                    Robot_Cooldown;
                ENDIF
            ELSE
                !There are no parts for this current job so skip it and select the next one
                getNextJob;
                IF requestNextJob=FALSE
                THEN
                    !We can start another job, else it will just exit
                    GOTO NewJobStart;
                ENDIF
                Robot_Cooldown;
            ENDIF
        ENDIF
        startDowntime(1);
    ENDPROC

    PROC enableListeners()
        !Initialize the listeners for the Cognex Snapp
        CONNECT passSignal WITH SnappPassSignalListener;
        ISignalDI Cognex_Snapp_Pass,1,passSignal;

        CONNECT failSignal WITH SnappFailSignalListener;
        ISignalDI Cognex_Snapp_Fail,1,failSignal;

        CONNECT errorSignal WITH SnappErrorSignalListener;
        ISignalDI Cognex_Snapp_Error,1,errorSignal;
    ENDPROC

    PROC Robot_Startup()
        snapStatus:=0;
        retryPress:=FALSE;
        !Have the robot start from the first tray of each drawer on start (Cable wrapping pulls bushings out if not)
        drawer1Tray2Active:=FALSE;
        drawer2Tray2Active:=FALSE;
        drawer3Tray2Active:=FALSE;
        drawer4Tray2Active:=FALSE;
        drawer5Tray2Active:=FALSE;
        drawer6Tray2Active:=FALSE;
        tray1Index:=0;
        tray2Index:=0;
        tray3Index:=0;
        tray4Index:=0;
        tray5Index:=0;
        tray6Index:=0;
        SwitchTrayCount:=0;

        !Turning the gripper pressure on 40 PSI
        SetDO SolA_8,1;

        SetDO Fumex_Power,1;

        isStopRequested:=FALSE;

        !Turn off all stack lights
        stacklights.blinkColorStatus:=[FALSE,FALSE,FALSE,FALSE,FALSE];
        stacklights.solidColorStatus:=[FALSE,FALSE,FALSE,FALSE,FALSE];

        skipToNextPart:=FALSE;
        failedPartNums:=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

        EraseTP("");
        PrintTP;

        skipChecks:=FALSE;
        con1EndFull:=FALSE;
        con1FrontRowFull:=FALSE;

        IF downForMaintenance=TRUE
        THEN
            UpdateTP("If you believe this is an error please contact maintenance");
            UpdateTP("ERROR Starting: Robot has been placed into maintenance mode");
            PrintTP;
            Stop;
            EXIT;
        ENDIF

        !Checking if laser is connected to robot
        IF currentErrorNumber=1
        THEN

            stacklights.blinkColorStatus.Orange:=TRUE;
            UpdateTP("Laser Disconnected, Please restart robot");
            PrintTP;
            startDowntime(5);
            Stop;
            EXIT;
        ENDIF

        !Making sure the robot can start based on it's initial conditions
        currentPosition:=CPos(\Tool:=gripper\WObj:=wobj0);
        GetJointData\MechUnit:=ROB_1,1\Position:=join1Pos;
        IF join1Pos<=-20 OR join1Pos>=110
        THEN
            IF Distance(currentPosition,homePositionChute)<=30 OR Distance(currentPosition,laserHomePosition)<=30 OR Distance(currentPosition,bushingCabinetHomePosition)<=30 OR Distance(currentPosition,drawerHomePosition)<=30
        THEN
                !Let the if statement exit and continue
            ELSE
                UpdateTP("ERROR: Robot is not in a safe home position to start");
                UpdateTP("Please get someone who knows how to jog the robot to assist");
                PrintTP;

                stacklights.blinkColorStatus.Red:=TRUE;
                startDowntime(1);
                Stop;
                EXIT;
            ENDIF
        ENDIF

        !Check to make sure the first conveyor belt is clear
        IF Con1_PartPresent=1
            THEN
            !There is a part in the way of the conveyor belt so index it once if possible
            IF Conveyor_Belt1_Full=1
            THEN
                UpdateTP("Conveyor belt 1 is full, please unload it");
                PrintTP;
            ELSE
                indexConveyor:=TRUE;
            ENDIF
        ENDIF

        !Check to make sure the second conveyor belt is clear
        IF Con2_PartPresent=1
            THEN
            !There is a part in the way of the second conveyor belt so index it once
            IF Conveyor_Belt2_Full=1
            THEN
                UpdateTP("Conveyor belt 2 is full, please unload it");
                PrintTP;
            ELSE
                indexConveyor:=TRUE;
            ENDIF
        ENDIF

        !Starting the runtime clock
        ClkReset runtimeClock;
        ClkStart runtimeClock;
        ClkReset masterRuntimeClock;
        ClkStart masterRuntimeClock;

        Close_All_Drawers(0);

        checkPartInLaser;
        !Runs the slower startup functions while the robot starts the first part to cut down on time required
        !Must be started after any other laser commands that need to happen first are done
        WaitTime 2;
        runStartupAsync:=TRUE;

        partNumber:=0;

        !Before moving check for shop air pressure
        IF airPressure=FALSE
		THEN
            UpdateTP("ERROR: Could not start robot because shop air pressure was too low");
            PrintTP;
            Robot_Cooldown;

            stacklights.blinkColorStatus.Red:=TRUE;
            startDowntime(1);
            Stop;
            EXIT;
        ENDIF

        !Before moving check if there is a problem with the Fumex System sucking air
        IF filterVelocity=FALSE
		THEN
            UpdateTP("ERROR: Could not start robot because Fumex filter did not turn on");
            PrintTP;
            Robot_Cooldown;
            stacklights.blinkColorStatus.Orange:=TRUE;
            startDowntime(5);
            Stop;
            EXIT;
        ENDIF

        !Before moving make sure that parts can be lasered (Filter might need changed)
        IF filterMaintCounter>=filterResetCount
        THEN
            stacklights.blinkColorStatus.White:=TRUE;
            stacklights.blinkColorStatus.Blue:=TRUE;
            UpdateTP("Maintenance ERROR: Fumex Dust Bag must be changed");
            UpdateTP("Please contact maintenance for assistance");
            PrintTP;
            startDowntime(5);
            Stop;
            EXIT;
        ENDIF

        SetGO Part_Chute_All,33554431;
        !With 25 lights, this value (33554431) is the decimal maximum and will illuminate all lights
        SetDO Fumex_Power,1;
        SetGO Stack_Light_All,31;
        !With 5 total lights, this value (31) is the decimal maximum and will illuminate all lights
        WaitTime 2;
        SetGO Part_Chute_All,0;
        SetGO Stack_Light_All,0;
        SetDO SolA_8,1;
        !This sets solenoid A_8 on which is a pressure of 20psi
        SetDO SolA_4,0;
        SetDO SolA_1,0;
        SetDO SolA_2,0;
        SetDO SolB_1,0;
        SetDO SolB_2,0;
        SetDO SolB_4,0;
        SetDO SolB_8,0;
        SetDO Safety_Lock,1;

        !This sets the bushing press fixtures to the retracted position on robot startup
        Set_Actuator(0);

        Check_Fumex_Filter;

        con1YIndex:=0;
        con2YIndex:=0;
        visionDiscardCount:=0;
        VisionFailure:=0;
        IF Gripper_PartPresent=1
        THEN
            stacklights.blinkColorStatus.White:=TRUE;
            stacklights.blinkColorStatus.Blue:=TRUE;
            UpdateTP("Part is present or fingers are dirty");
            PrintTP;
            !Call the operator
            PulseDO\PLength:=3,Audible;
            startDowntime(1);
            Stop;
        ENDIF

        stacklights.blinkColorStatus.Green:=FALSE;

        IF chuteFull=TRUE
        THEN
            UpdateTP("Chute is full and needs emptied");
            PrintTP;
            Stop;
            EXIT;
        ENDIF

    ENDPROC

    PROC Robot_Cooldown()
        Close_All_Drawers(0);
        !This resets the conveyor position in preparation for the next job
        con1YIndex:=0;
        !SetDO Safety_Lock,0;                   !This will unlock the robot enclosure door
        SetDO Fumex_Power,0;
        !This will turn off the Fumex
        SetDO Fumex_Filter_Good,0;
        !This will turn off the Fumex stacklight (unless red)
        SetDO Laser_On,0;
        !This will turn off the laser light
        SetDO Camera_SetOffline,1;
        Set_Actuator(0);
        SetGO Part_Chute_All,0;
    ENDPROC

    !SOLENOID TABLE
    ! 8 = 40psi
    ! 4 = 20psi
    ! 2 = 10psi
    ! 1 = 5psi
    ! Mixing and matching will allow for additional pressures. For example, if Sol_8 and Sol_4 are both turned on, pressure will be 60psi (40 + 20)


    !ORIGINALLY DESIGNED AND CODED BY CONNOR POCTA MSG MELD, SUMMER 2021
    !CODE FURTHER DEVELOPED AND CONTINUED BY GEORGE RAK, MANUFACTURING ENGINEERING CO-OP SPRING 2022-SUMMER 2024
    !CODE FURTHER DEVELOPED AND CONTINUED BY GEORGE RAK, MANUFACRUTING ENGINEER GRADE 7 SUMMER 2024-Present
ENDMODULE