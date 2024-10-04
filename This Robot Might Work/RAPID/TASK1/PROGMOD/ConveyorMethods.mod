MODULE ConveyorMethods

    !**********CONVEYOR BELT RELATED POSITIONS**********
    !CONVEYOR 1 POINTS
    CONST robtarget CD1_Home:=[[-139.11,286.66,-419.45],[0.726936,0.0108332,0.68628,-0.0216188],[1,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD1_Pos1_10:=[[-77.72,82.63,-142.57],[0.999986,0.0014281,0.00438778,-0.00257048],[1,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD1_Pos1_20:=[[-77.74,69.28,-18.66],[0.999986,0.00148817,0.00439189,-0.00247518],[1,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD1_Pos1_30_400:=[[-69.94,69.28,47.07],[0.999986,0.00151387,0.00438156,-0.00242347],[1,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD1_Pos1_30_600:=[[-69.88,69.31,41.30],[0.999986,0.0015235,0.00439816,-0.00239316],[1,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD1_Pos1_30_N600:=[[-77.86,69.11,41.24],[0.999986,0.00151776,0.00442714,-0.00239689],[1,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD1_Pos1_30_800:=[[-80.83,69.10,36.13],[0.999986,0.00147613,0.00440685,-0.00246396],[1,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD1_Pos1_50:=[[-77.70,69.33,-35.86],[0.999986,0.00150943,0.0044166,-0.00247729],[1,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget CD1_Flow_App10:=[[-45.36,78.75,-251.90],[0.739655,-0.00354608,0.672128,-0.0337799],[1,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD1_Flow_App20:=[[-51.98,69.33,5.45],[0.739734,-0.00352616,0.672044,-0.0337265],[1,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD1_Flow_Place:=[[-45.69,69.41,17.08],[0.727407,-0.0089642,0.685553,-0.0285615],[1,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD1_Flow_Dep05:=[[-46.82,69.61,-71.11],[0.73972,-0.00349333,0.672058,-0.0337649],[1,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD1_Flow_Dep20:=[[-147.26,209.09,-262.36],[0.739715,-0.00340765,0.672064,-0.0337652],[1,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !CONVEYOR 2 POINTS
    CONST robtarget CD2_Home:=[[-248.26,194.60,-512.20],[0.718566,0.00539861,0.695371,0.00962205],[-2,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD2_App10:=[[-23.57,164.48,-495.65],[0.712121,-0.00267119,0.701833,0.0175534],[-2,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD2_App20:=[[-59.68,175.13,-34.63],[0.718619,0.00489822,0.695314,0.0100282],[-2,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD2_Dep20:=[[-23.57,164.48,-495.65],[0.712118,-0.00267347,0.701835,0.0175506],[-2,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD2_Dep10:=[[-59.68,175.13,-34.63],[0.718615,0.00489991,0.695319,0.0100228],[-2,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD2_Dep05:=[[-49.82,68.46,-62.68],[0.63475,-0.0024477,0.772692,0.00579813],[-2,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD2_Place:=[[-46.12,67.87,19.47],[0.718634,0.00493132,0.695297,0.0101328],[-2,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget CD2_Pos1_10:=[[-153.90,72.62,-58.85],[0.999792,-0.00305858,-0.0199939,-0.00257593],[-2,2,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD2_Pos1_30_400:=[[-64.33,72.70,49.22],[0.999942,-0.00285312,-0.00405641,0.00952131],[-2,2,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD2_Pos1_30_600:=[[-62.88,72.79,44.13],[0.999977,0.0048625,-0.0020462,-0.00425031],[-2,2,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD2_Pos1_30_N600:=[[-68.65,66.67,45.96],[0.999793,-0.00293803,-0.0199958,-0.00246326],[-2,2,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD2_Pos1_30_800:=[[-78.18,77.43,39.04],[0.999895,-0.00287389,0.0139334,-0.00272441],[-2,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CD2_Pos1_50:=[[-69.31,66.31,-41.95],[0.999793,-0.0029368,-0.0199962,-0.00245647],[-2,2,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];


    !**********CONVEYOR BELT FUNCTIONALITY CHANGES**********
    !   NOTE:                   The variables in this section are meant to be set by the user, read the info below before changing them
    !   Belt Available Types:   Used to set which types of bodies can be sent to each belt. {1= Checks only, 2 = Flows and Needles only, 3 = Both F/N & Checks}
    !   Belt Enabled:           Used to enable or disable a belt from recieving any parts at all regardless of what it's available types are
    VAR num belt1AvailableTypes:=3;
    VAR num belt2AvailableTypes:=3;
    VAR bool belt1Enabled:=TRUE;
    VAR bool belt2Enabled:=TRUE;

    !**********CONVEYOR BELT VARIABLES**********
    !   ConIndex:                       Store the current number of bodies that have already been placed on the conveyor (0-> 4)
    VAR byte con1YIndex;
    VAR byte con2YIndex;

    !   YOffset:                        The spacing between each body on the belt in the horizontal direction (Gets multiplied by ConIndex)
    VAR byte con1YOffset:=53.65;
    VAR byte con2YOffset:=53.65;

    !   Conveyor Belt Full Variables:   Updated by Asynchronous task, meant to determine if the robot should skip certain parts, These may no longer be needed as the logic has changed
    !   LOOK AT POSSIBLY REMOVING THESE AND ANYTHING ASSOCIATED WITH THEM
    VAR bool con1Full;
    PERS bool con1EndFull:=FALSE;
    PERS bool con1FrontRowFull:=FALSE;

    !   Belt Time & Belt To Index:      Used to determine which belt moves and how long it moves, used by the Asychronous task to move the belt so robot can keep moving
    PERS num beltTime;
    PERS num beltToIndex;

    !   lastPlacedBelt:                 Tracks which belt the robot was using last, this is needed for indexing purposes occasionally
    VAR num lastPlacedBelt:=0;

    !   addBeltSpacing:                 Used by the robot to determine if it should index the belt when it starts a new part (If the last part was not produced we do not index the belt)
    VAR bool addBeltSpacing:=FALSE;

    !Variable to tell the async task to index conveyor until no part is seen on either conveyor sensor
    PERS bool indexConveyor:=FALSE;
    CONST robtarget RA_Home_40:=[[876.89,-599.99,-523.08],[0.120508,0.020174,0.903374,-0.411079],[0,0,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !**********BEGIN CONVEYOR BELT PROCEEDURES**********

    !Checking if conveyors can accept another part of the current part number
    FUNC bool ConveyorCheck()
        VAR num desiredBelt:=1;
        VAR bool desiredBeltStatus:=TRUE;
        VAR num allowedBelt:=1;
        VAR num targetBelt:=0;
        VAR num typeOfBody:=0;
        VAR bool belt1Allow:=TRUE;
        VAR bool belt2Allow:=TRUE;
        VAR bool triggerEnd:=FALSE;
        !Check to make sure for this part number which belt allows this part to be placed on it
        IF partNumber=11 OR partNumber=12 OR partNumber=13 OR partNumber=14 OR partNumber=15 OR partNumber=16
        OR partNumber=17 OR partNumber=18 OR partNumber=20 OR partNumber=21 OR partNumber=23 OR partNumber=24
        THEN
            IF belt1AvailableTypes=1
            THEN
                belt1Allow:=FALSE;
            ENDIF

            IF belt2AvailableTypes=1
            THEN
                belt2Allow:=FALSE;
            ENDIF
        ELSE
            IF belt1AvailableTypes=2
            THEN
                belt1Allow:=FALSE;
            ENDIF

            IF belt2AvailableTypes=2
            THEN
                belt2Allow:=FALSE;
            ENDIF
        ENDIF

        !Reference the part number to figure out which belt we want to place the part on
        IF partNumber=11 OR partNumber=12 OR partNumber=13 OR partNumber=14 OR partNumber=15 OR partNumber=16
        OR partNumber=17 OR partNumber=18 OR partNumber=20 OR partNumber=21 OR partNumber=23 OR partNumber=24
        THEN
            IF belt2Allow
            THEN
                desiredBelt:=2;
            ELSEIF belt1Allow
            THEN
                desiredBelt:=1;
            ELSE
                desiredBelt:=0;
            ENDIF
            typeOfBody:=2;
        ELSE
            IF belt1Allow
            THEN
                desiredBelt:=1;
            ELSEIF belt2Allow
            THEN
                desiredBelt:=2;
            ELSE
                desiredBelt:=0;
            ENDIF
            typeOfBody:=1;
        ENDIF

        !If desired belt is 0 then something is wrong and one belt needs to be set to accept the type of body we currently have. Stop the robot and exit the program
        !STOP ROBOT FOR NOW, LATER ADD IN A DROPOFF PROGRAM TO ALLOW ROBOT TO KEEP RUNNING LONGER
        IF desiredBelt=0
        THEN
            UpdateTP("No Conveyor Belt Is Allowed to recieve the current part");
            UpdateTP("Robot is unable to determine where to place part");
            PrintTP;
            startDowntime(11);
            Stop;
            EXIT;
        ENDIF

        !Check the prox sensors at the end of the desired belt to see if it is full or not
        IF desiredBelt=1 AND Conveyor_Belt1_Full=1 AND Con1_PartPresent=1
        THEN
            desiredBeltStatus:=FALSE;
        ELSEIF desiredBelt=2 AND Conveyor_Belt2_Full=1 AND Con2_PartPresent=1
        THEN
            desiredBeltStatus:=FALSE;
        ENDIF

        !If the desired belt is full check it's index to see if it can still hold more parts in the last row
        !DO NOT COPY AND PASTE THIS FUNCTION TO THE PROC BELOW, IT IS DIFFERENT
        IF desiredBelt=1 AND con1YIndex>0 AND con1YIndex<4 AND Con1_PartPresent=1
        THEN
            desiredBeltStatus:=TRUE;
        ELSEIF desiredBelt=2 AND con2YIndex>0 AND con2YIndex<4 AND Con2_PartPresent=1
        THEN
            desiredBeltStatus:=TRUE;
        ENDIF

        !Set the target belt based on the desired status and desired belt number
        !DO NOT COPY THIS SECTION TO THE PROC BELOW, IT IS DIFFERENT
        IF desiredBelt=1 AND desiredBeltStatus=TRUE AND belt1Enabled
        THEN
            targetBelt:=1;
        ELSEIF desiredBelt=1
        THEN
            IF belt2Allow AND Conveyor_Belt2_Full=0 AND belt2Enabled
            THEN
                targetBelt:=2;
            ELSEIF belt2Allow AND Conveyor_Belt2_Full=1 AND belt2Enabled AND Con2_PartPresent=0
            THEN
                targetBelt:=2;
            ELSEIF belt2Allow AND Conveyor_Belt2_Full=1 AND belt2Enabled AND Con2_PartPresent=1 AND con2YIndex>0 AND con2YIndex<4
            THEN
                targetBelt:=2;
            ELSE
                targetBelt:=0;
            ENDIF
        ENDIF

        IF desiredBelt=2 AND desiredBeltStatus=TRUE AND belt2Enabled
        THEN
            targetBelt:=2;
        ELSEIF desiredBelt=2
        THEN
            IF belt1Allow AND Conveyor_Belt1_Full=0 AND belt1Enabled
            THEN
                targetBelt:=1;
            ELSEIF belt1Allow AND Conveyor_Belt1_Full=1 AND belt1Enabled AND Con1_PartPresent=0
            THEN
                targetBelt:=1;
            ELSEIF belt1Allow AND Conveyor_Belt1_Full=1 AND belt1Enabled AND Con1_PartPresent=1 AND con1YIndex>0 AND con1YIndex<4
            THEN
                targetBelt:=1;
            ELSE
                targetBelt:=0;
            ENDIF
        ENDIF

        !Make sure that the target belt accepts the type of body we want to give it
        IF targetBelt=1
        THEN
            IF typeOfBody=1 AND belt1AvailableTypes=2
            THEN
                targetBelt:=0;
            ELSEIF typeOfBody=2 AND belt1AvailableTypes=1
            THEN
                targetBelt:=0;
            ENDIF
        ELSEIF targetBelt=2
        THEN
            IF typeOfBody=1 AND belt2AvailableTypes=2
            THEN
                targetBelt:=0;
            ELSEIF typeOfBody=2 AND belt2AvailableTypes=1
            THEN
                targetBelt:=0;
            ENDIF
        ENDIF

        !If the target belt is 0 then it doesn't work so return false, otherwise return true
        IF targetBelt=0
        THEN
            RETURN FALSE;
        ELSE
            RETURN TRUE;
        ENDIF
    ENDFUNC

    !Places a part on the correct conveyor in the correct location
    PROC Conveyor()
        VAR num desiredBelt:=1;
        VAR bool desiredBeltStatus:=TRUE;
        VAR num allowedBelt:=1;
        VAR num targetBelt:=0;
        VAR num typeOfBody:=0;
        VAR bool belt1Allow:=TRUE;
        VAR bool belt2Allow:=TRUE;
        VAR bool triggerEnd:=FALSE;

        !Make sure a part number is assigned
        IF partNumber=0
        THEN
            UpdateTP("Error: Part Number un-assigned at conveyor call");
            PrintTP;
            stacklights.blinkColorStatus.Red:=TRUE;
            startDowntime(11);
            Stop;
            EXIT;
        ENDIF

        !Check to make sure for this part number which belt allows this part to be placed on it
        IF partNumber=11 OR partNumber=12 OR partNumber=13 OR partNumber=14 OR partNumber=15 OR partNumber=16
        OR partNumber=17 OR partNumber=18 OR partNumber=20 OR partNumber=21 OR partNumber=23 OR partNumber=24
        THEN
            IF belt1AvailableTypes=1
            THEN
                belt1Allow:=FALSE;
            ENDIF

            IF belt2AvailableTypes=1
            THEN
                belt2Allow:=FALSE;
            ENDIF
        ELSE
            IF belt1AvailableTypes=2
            THEN
                belt1Allow:=FALSE;
            ENDIF

            IF belt2AvailableTypes=2
            THEN
                belt2Allow:=FALSE;
            ENDIF
        ENDIF

        !Reference the part number to figure out which belt we want to place the part on
        IF partNumber=11 OR partNumber=12 OR partNumber=13 OR partNumber=14 OR partNumber=15 OR partNumber=16
        OR partNumber=17 OR partNumber=18 OR partNumber=20 OR partNumber=21 OR partNumber=23 OR partNumber=24
        THEN
            IF belt2Allow
            THEN
                desiredBelt:=2;
            ELSEIF belt1Allow
            THEN
                desiredBelt:=1;
            ELSE
                desiredBelt:=0;
            ENDIF
            typeOfBody:=2;
        ELSE
            IF belt1Allow
            THEN
                desiredBelt:=1;
            ELSEIF belt2Allow
            THEN
                desiredBelt:=2;
            ELSE
                desiredBelt:=0;
            ENDIF
            typeOfBody:=1;
        ENDIF

        !If desired belt is 0 then something is wrong and one belt needs to be set to accept the type of body we currently have. Stop the robot and exit the program
        !STOP ROBOT FOR NOW, LATER ADD IN A DROPOFF PROGRAM TO ALLOW ROBOT TO KEEP RUNNING LONGER
        IF desiredBelt=0
        THEN
            UpdateTP("No Conveyor Belt Is Allowed to recieve the current part");
            UpdateTP("Robot is unable to determine where to place part");
            PrintTP;
            startDowntime(11);
            Stop;
            EXIT;
        ENDIF

        !Check the prox sensors at the end of the desired belt to see if it is full or not
        IF desiredBelt=1 AND Conveyor_Belt1_Full=1 AND Con1_PartPresent=1
        THEN
            desiredBeltStatus:=FALSE;
        ELSEIF desiredBelt=2 AND Conveyor_Belt2_Full=1 AND Con2_PartPresent=1
        THEN
            desiredBeltStatus:=FALSE;
        ENDIF

        !If the desired belt is full check it's index to see if it can still hold more parts in the last row
        !DO NOT COPY AND PASTE THIS SECTION TO THE FUNCTION ABOVE, IT IS NOT THE SAME
        IF desiredBelt=1 AND con1YIndex>0 AND con1YIndex<5 AND Con1_PartPresent=1
        THEN
            desiredBeltStatus:=TRUE;
        ELSEIF desiredBelt=2 AND con2YIndex>0 AND con2YIndex<5 AND Con2_PartPresent=1
        THEN
            desiredBeltStatus:=TRUE;
        ENDIF

        !Set the target belt based on the desired status and desired belt number
        IF desiredBelt=1 AND desiredBeltStatus=TRUE AND belt1Enabled
        THEN
            targetBelt:=1;
        ELSEIF desiredBelt=1
        THEN
            IF belt2Allow AND Conveyor_Belt2_Full=0 AND belt2Enabled
            THEN
                targetBelt:=2;
            ELSEIF belt2Allow AND Conveyor_Belt2_Full=1 AND belt2Enabled AND Con2_PartPresent=0
            THEN
                targetBelt:=2;
            ELSEIF belt2Allow AND Conveyor_Belt2_Full=1 AND belt2Enabled AND Con2_PartPresent=1 AND con2YIndex>0 AND con2YIndex<5
            THEN
                targetBelt:=2;
            ELSE
                targetBelt:=0;
            ENDIF
        ENDIF

        IF desiredBelt=2 AND desiredBeltStatus=TRUE AND belt2Enabled
        THEN
            targetBelt:=2;
        ELSEIF desiredBelt=2
        THEN
            IF belt1Allow AND Conveyor_Belt1_Full=0 AND belt1Enabled
            THEN
                targetBelt:=1;
            ELSEIF belt1Allow AND Conveyor_Belt1_Full=1 AND belt1Enabled AND Con1_PartPresent=0
            THEN
                targetBelt:=1;
            ELSEIF belt1Allow AND Conveyor_Belt1_Full=1 AND belt1Enabled AND Con1_PartPresent=1 AND con1YIndex>0 AND con1YIndex<5
            THEN
                targetBelt:=1;
            ELSE
                targetBelt:=0;
            ENDIF
        ENDIF

        !Make sure that the target belt accepts the type of body we want to give it
        IF targetBelt=1
        THEN
            IF typeOfBody=1 AND belt1AvailableTypes=2
            THEN
                targetBelt:=0;
            ELSEIF typeOfBody=2 AND belt1AvailableTypes=1
            THEN
                targetBelt:=0;
            ENDIF
        ELSEIF targetBelt=2
        THEN
            IF typeOfBody=1 AND belt2AvailableTypes=2
            THEN
                targetBelt:=0;
            ELSEIF typeOfBody=2 AND belt2AvailableTypes=1
            THEN
                targetBelt:=0;
            ENDIF
        ENDIF

        !If the target belt is 0 then the robot does not know where to place this part because the belts that have space do not accept this part type
        !STOP ROBOT FOR NOW, LATER ADD IN A DROP OFF PROGRAM TO ALLOW ROBOT TO KEEP RUNNING LONGER
        IF targetBelt=0
        THEN
            UpdateTP("Robot is unable to place current part onto a conveyor");
            UpdateTP("One or more conveyors may not be configured to recieve this part");
            UpdateTP("Both Conveyors may also need to be unloaded");
            PrintTP;
            startDowntime(5);
            Stop;
            EXIT;
        ENDIF

        !If belts were switched then index both
        IF NOT (lastPlacedBelt=targetBelt)
        THEN
            indexConveyor:=TRUE;
        ENDIF

        !The robot should make it to either belt from laser home so check to see if it is at that home position and if not move there
        IF Distance(currentPosition,laserHomePosition)>30 AND targetBelt=1
        THEN
            !Move the robot to laser home position
            MoveJ LP_Home,v1000,fine,gripper\WObj:=wobj_Laser;
        ENDIF
        
        !At this point we are ready to place part on the conveyor
        IF targetBelt=1
        THEN
            !Wait for conveyor belt 1 to be stopped externally before placing a part
            WaitDI Con1_Stop,0;
            
            IF con1YIndex=0 AND Con1_PartPresent=1
            THEN
                indexConveyor:=TRUE;
                WaitTime 10;
                IF Con1_PartPresent=1
                THEN
                    !The laser might have disconnected so we should index the conveyor belt for 6 seconds manually just in case
                    IF Conveyor_Belt1_Full=0
                    THEN
                        SetDO Con1_Index,1;
                        WaitTime(6);
                        SetDO Con1_Index,0;
                    ENDIF

                    IF Con1_PartPresent=1
                    THEN
                        stacklights.blinkColorStatus.Blue:=TRUE;
                        UpdateTP("Error: Part still present at conveyor 1 even after indexing");
                        PrintTP;
                        startDowntime(11);
                        Stop;
                        EXIT;
                    ENDIF
                ENDIF
            ENDIF

            PathAccLim TRUE\AccMax:=2.5,TRUE\DecelMax:=2.5;
            MoveJ CD1_Home,vmax,z200,gripper\WObj:=wobj_Conveyor1;
            PathAccLim FALSE,FALSE;

            WaitDO Con1_Index,0;

            IF partNumber=1 OR partNumber=2 OR partNumber=3 OR partNumber=4 OR partNumber=5 OR partNumber=6 OR partNumber=7 OR partNumber=8
            OR partNumber=9 OR partNumber=26 OR partNumber=27 OR partNumber=19 OR partNumber=10 OR partNumber=22 OR partNumber=25
            THEN
                PathAccLim TRUE\AccMax:=2.5,TRUE\DecelMax:=2.5;
                MoveJ Offs(CD1_Pos1_10,0,con1YOffset*con1YIndex,0),vmax,z100,gripper\WObj:=wobj_Conveyor1;
                MoveJ Offs(CD1_Pos1_20,0,con1YOffset*con1YIndex,0),vmax,z100,gripper\WObj:=wobj_Conveyor1;
                PathAccLim FALSE,FALSE;

                !Place the part on the conveyor belt (Checks and Brass F&Ns get put on this belt)
                IF partNumber=1 OR partNumber=2 OR partNumber=3 OR partNumber=19
                THEN
                    MoveJ Offs(CD1_Pos1_30_400,0,con1YOffset*con1YIndex,0),v600,fine,gripper\WObj:=wobj_Conveyor1;
                    Release;
                ELSEIF partNumber=4 OR partNumber=5 OR partNumber=6 OR partNumber=22
                THEN
                    MoveJ Offs(CD1_Pos1_30_600,0,con1YOffset*con1YIndex,0),v600,fine,gripper\WObj:=wobj_Conveyor1;
                    Release;
                ELSEIF partNumber=10
                THEN
                    MoveJ Offs(CD1_Pos1_30_N600,0,con1YOffset*con1YIndex,0),v600,fine,gripper\WObj:=wobj_Conveyor1;
                    Release;
                ELSEIF partNumber=7 OR partNumber=8 OR partNumber=9 OR partNumber=25
                THEN
                    MoveJ Offs(CD1_Pos1_30_800,0,con1YOffset*con1YIndex,0),v600,fine,gripper\WObj:=wobj_Conveyor1;
                    Release;
                ENDIF
                MoveJ Offs(CD1_Pos1_50,0,con1YOffset*con1YIndex,0),v600,z0,gripper\WObj:=wobj_Conveyor1;
            ELSE
                !ONLY Y OFFSET IS ADJUSTABLE BECAUSE PRESS PICK NEEDS TO BE CONSISTENT AND GRAB AT SAME HEIGHT AND DISTANCE FROM BACK OF PART
                PathAccLim TRUE\AccMax:=2.5,TRUE\DecelMax:=2.5;
                MoveJ Offs(CD1_Flow_App10,0,con2YOffset*con1YIndex,0),vmax,z100,gripper\WObj:=wobj_Conveyor1;
                MoveJ Offs(CD1_Flow_App20,0,con2YOffset*con1YIndex,0),vmax,z10,gripper\WObj:=wobj_Conveyor1;
                PathAccLim FALSE,FALSE;

                MoveL Offs(CD1_Flow_Place,0,con2YOffset*con1YIndex,0),v200,fine,gripper\WObj:=wobj_Conveyor1;
                Release;
                MoveL Offs(CD1_Flow_Dep05,0,con2YOffset*con1YIndex,0),v100,fine,gripper\WObj:=wobj_Conveyor1;
                !rotate gripper back
                MoveJ CD1_Flow_Dep20,v1000,z10,gripper\WObj:=wobj_Conveyor1;
            ENDIF

            !Index the part counter
            con1YIndex:=con1YIndex+1;
            IF con1YIndex>=5
            THEN
                indexConveyor:=TRUE;
                con1YIndex:=0;
            ENDIF

            !Move back to a home location
            PathAccLim TRUE\AccMax:=2.5,TRUE\DecelMax:=2.5;
            MoveJ CD1_Home,vmax,z200,gripper\WObj:=wobj_Conveyor1;
            PathAccLim FALSE,FALSE;

        ELSEIF targetBelt=2
        THEN
            
            !Wait for conveyor belt 2 to be stopped externally before placing a part
            WaitDI Con2_Stop,0;
            
            IF con2YIndex=0 AND Con2_PartPresent=1
            THEN
                indexConveyor:=TRUE;
                WaitTime 10;
                IF Con2_PartPresent=1
                THEN
                    !The laser might have disconnected so we should index the conveyor belt for 6 seconds manually just in case
                    IF Conveyor_Belt2_Full=0
                    THEN
                        SetDO Con2_Index,1;
                        WaitTime(6);
                        SetDO Con2_Index,0;
                    ENDIF

                    IF Con2_PartPresent=1
                    THEN
                        stacklights.blinkColorStatus.Blue:=TRUE;
                        UpdateTP("Error: Part still present at conveyor 2 even after indexing");
                        PrintTP;
                        startDowntime(11);
                        Stop;
                        EXIT;
                    ENDIF
                ENDIF
            ENDIF

            PathAccLim TRUE\AccMax:=2.5,TRUE\DecelMax:=2.5;
            MoveJ CD2_Home,v2000,z100,gripper\WObj:=wobj_Conveyor2;
            PathAccLim FALSE,FALSE;

            WaitDO Con2_Index,0;

            IF partNumber=11 OR partNumber=12 OR partNumber=13 OR partNumber=14 OR partNumber=15 OR partNumber=16
            OR partNumber=17 OR partNumber=18 OR partNumber=20 OR partNumber=21 OR partNumber=23 OR partNumber=24
            THEN
                !ONLY Y OFFSET IS ADJUSTABLE BECAUSE PRESS PICK NEEDS TO BE CONSISTENT AND GRAB AT SAME HEIGHT AND DISTANCE FROM BACK OF PART
                PathAccLim TRUE\AccMax:=2.5,TRUE\DecelMax:=2.5;
                MoveJ CD2_App10,vmax,z100,gripper\WObj:=wobj_Conveyor2;
                PathAccLim FALSE,FALSE;
                !The +85 avoids drawers if they are open
                MoveJ Offs(CD2_App20,0,con2YOffset*con2YIndex,-85),v1000,z50,gripper\WObj:=wobj_Conveyor2;
                MoveL Offs(CD2_Place,0,con2YOffset*con2YIndex,-0),v400,fine,gripper\WObj:=wobj_Conveyor2;
                Release;
                MoveL Offs(CD2_Dep05,0,con2YOffset*con2YIndex,-0),v100,fine,gripper\WObj:=wobj_Conveyor2;
                !rotate gripper back
                MoveL Offs(CD2_Dep10,0,con2YOffset*con2YIndex,-0),v400,fine,gripper\WObj:=wobj_Conveyor2;
                MoveJ CD2_Dep20,v1000,z10,gripper\WObj:=wobj_Conveyor2;
            ELSE
                MoveJ CD2_Home,v1000,z200,gripper\WObj:=wobj_Conveyor2;
                WaitDO Con2_Index,0;
                MoveJ Offs(CD2_Pos1_10,0,con2YOffset*con2YIndex,-0),v600,z100,gripper\WObj:=wobj_Conveyor2;

                !Place the part on the conveyor belt (Checks and Brass F&Ns get put on this belt)
                IF partNumber=1 OR partNumber=2 OR partNumber=3 OR partNumber=19
                THEN
                    MoveJ Offs(CD2_Pos1_30_400,0,con1YOffset*con2YIndex,-0),v600,fine,gripper\WObj:=wobj_Conveyor2;
                    Release;
                ELSEIF partNumber=4 OR partNumber=5 OR partNumber=6 OR partNumber=22
                THEN
                    MoveJ Offs(CD2_Pos1_30_600,0,con1YOffset*con2YIndex,-0),v600,fine,gripper\WObj:=wobj_Conveyor2;
                    Release;
                ELSEIF partNumber=10
                THEN
                    MoveJ Offs(CD2_Pos1_30_N600,0,con1YOffset*con2YIndex,-0),v600,fine,gripper\WObj:=wobj_Conveyor2;
                    Release;
                ELSEIF partNumber=7 OR partNumber=8 OR partNumber=9 OR partNumber=25
                THEN
                    MoveJ Offs(CD2_Pos1_30_800,0,con1YOffset*con2YIndex,-0),v600,fine,gripper\WObj:=wobj_Conveyor2;
                    Release;
                ENDIF
                MoveJ Offs(CD2_Pos1_50,0,con1YOffset*con2YIndex,-0),v600,z0,gripper\WObj:=wobj_Conveyor2;
            ENDIF

            MoveJ CD2_Home,v1000,fine,gripper\WObj:=wobj_Conveyor2;

            !Index the part counter
            con2YIndex:=con2YIndex+1;
            IF con2YIndex>=5
            THEN
                indexConveyor:=TRUE;
                con2YIndex:=0;
            ENDIF
        ENDIF

        !Update the last placed belt variable
        lastPlacedBelt:=targetBelt;

        !Check whether or not we need to trigger the end of the part number
        IF Conveyor_Belt1_Full=1 AND Conveyor_Belt2_Full=1 AND targetBelt=1 AND con1YIndex=3
        THEN
            triggerEnd:=TRUE;
        ELSEIF Conveyor_Belt1_Full=1 AND Conveyor_Belt2_Full=1 AND targetBelt=2 AND con2YIndex=3
        THEN
            triggerEnd:=TRUE;
        ELSEIF targetBelt=1 AND Conveyor_Belt1_Full=1 AND belt2Allow=FALSE AND con1YIndex=3
        THEN
            triggerEnd:=TRUE;
        ELSEIF targetBelt=2 AND Conveyor_Belt2_Full=1 AND belt1Allow=FALSE AND con2YIndex=3
        THEN
            triggerEnd:=TRUE;
        ENDIF

        IF triggerEnd AND typeOfBody=1
        THEN
            endPartSoon:=TRUE;
        ELSEIF triggerEnd AND typeOfBody=2
        THEN
            endPartSoonWithBushing:=TRUE;
        ENDIF
    ENDPROC

    !Runs through and tests certain positions and conveyor belt features
    PROC ConveyorAdjustment()
        VAR num selectedTest;
        VAR btnres responseSelection;
        CONST listitem testOptions{3}:=[["","1: Test Conveyor #1 Positions"],["","2: Test Conveyor #2 Positions"],["","3: Custom Test (Requires code to be added)"]];
        !Put up a message about how this is a test feature only, make sure drawers are in expected position before running test
        ErrLog 4800,"Conveyor Test","This is a test feature for the conveyor belts","Please run in manual mode only","Make sure bushing drawers are in safe / expected locations","Allows for rob target changing, may require manual offset update";

        WaitTime 2;

        !Once they accept the error message we can ask them which drawer's points they would like to test
        selectedTest:=UIListView(\Result:=responseSelection\Header:="Which test would you like to run?",testOptions\Buttons:=btnOKCancel\Icon:=iconInfo\DefaultIndex:=1);

        IF responseSelection=resOK
        THEN
            IF selectedTest=1
            THEN
                !Move to the chute home location
                MoveJ PC_Home,v200,fine,gripper\WObj:=wobj_PartChute;

                !Check Valve Positions on Belt 1 test
                Grip;
                Stop;
                MoveJ CD1_Home,v200,z200,gripper\WObj:=wobj_Conveyor1;
                MoveJ CD1_Pos1_10,v200,z100,gripper\WObj:=wobj_Conveyor1;
                MoveJ CD1_Pos1_20,v200,z100,gripper\WObj:=wobj_Conveyor1;
                MoveJ CD1_Pos1_30_400,v200,fine,gripper\WObj:=wobj_Conveyor1;
                MoveJ CD1_Pos1_30_600,v200,fine,gripper\WObj:=wobj_Conveyor1;
                MoveJ CD1_Pos1_30_N600,v200,fine,gripper\WObj:=wobj_Conveyor1;
                MoveJ CD1_Pos1_30_800,v200,fine,gripper\WObj:=wobj_Conveyor1;
                Release;
                Stop;
                MoveJ CD1_Pos1_50,v200,z0,gripper\WObj:=wobj_Conveyor1;
                MoveJ CD1_Home,v200,z200,gripper\WObj:=wobj_Conveyor1;

                WaitTime(3);
                !Flow and Neeedle Valve Positions on Belt 1 Test
                Grip;
                Stop;
                MoveJ CD1_Flow_App10,v200,z100,gripper\WObj:=wobj_Conveyor1;
                MoveJ CD1_Flow_App20,v200,z10,gripper\WObj:=wobj_Conveyor1;
                MoveL CD1_Flow_Place,v200,fine,gripper\WObj:=wobj_Conveyor1;
                Release;
                Stop;
                MoveL CD1_Flow_Dep05,v200,fine,gripper\WObj:=wobj_Conveyor1;
                MoveJ CD1_Flow_Dep20,v200,z10,gripper\WObj:=wobj_Conveyor1;
                MoveJ CD1_Home,v200,z200,gripper\WObj:=wobj_Conveyor1;
                ErrLog 4800,"Test Completed","Please reset the robot and cell","Make sure to PP to main","","";
            ELSEIF selectedTest=2
            THEN
                !Flow Valve Positions on Belt 2 Test
                Grip;
                Stop;
                MoveJ CD2_Home,v200,z100,gripper\WObj:=wobj_Conveyor2;
                MoveJ CD2_App10,v200,z100,gripper\WObj:=wobj_Conveyor2;
                MoveJ CD2_App20,v200,z10,gripper\WObj:=wobj_Conveyor2;
                MoveL CD2_Place,v200,fine,gripper\WObj:=wobj_Conveyor2;
                Release;
                Stop;
                MoveL CD2_Dep05,v200,fine,gripper\WObj:=wobj_Conveyor2;
                MoveL CD2_Dep10,v200,fine,gripper\WObj:=wobj_Conveyor2;
                MoveJ CD2_Dep20,v200,z10,gripper\WObj:=wobj_Conveyor2;
                MoveJ CD2_Home,v200,fine,gripper\WObj:=wobj_Conveyor2;

                !Check Valve Positions on Belt 2 Test
                Grip;
                Stop;
                MoveJ CD2_Pos1_10,v200,z100,gripper\WObj:=wobj_Conveyor2;
                MoveJ CD2_Pos1_30_400,v200,fine,gripper\WObj:=wobj_Conveyor2;
                MoveJ CD2_Pos1_30_600,v200,fine,gripper\WObj:=wobj_Conveyor2;
                MoveJ CD2_Pos1_30_N600,v200,fine,gripper\WObj:=wobj_Conveyor2;
                MoveJ CD2_Pos1_30_800,v200,fine,gripper\WObj:=wobj_Conveyor2;
                Release;
                Stop;
                MoveJ CD2_Pos1_50,v200,z0,gripper\WObj:=wobj_Conveyor2;
                MoveJ CD2_Home,v200,fine,gripper\WObj:=wobj_Conveyor2;
                ErrLog 4800,"Test Completed","Please reset the robot and cell","Make sure to PP to main","","";

            ELSEIF selectedTest=3
            THEN
                !Add your own custom test code here if need be


            ENDIF
        ENDIF
    ENDPROC
ENDMODULE