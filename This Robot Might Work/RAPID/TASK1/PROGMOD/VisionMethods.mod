MODULE VisionMethods

    !Vision SCAN (VS)
    CONST robtarget VS_Home:=[[-412.76,280.69,-435.63],[0.705146,-0.00538216,0.709034,0.00338762],[-1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !Steel Move Location
    CONST robtarget VS_Failure10:=[[-407.59,-115.91,-496.78],[0.685727,0.204832,0.673966,-0.183279],[0,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget VS_Failure20:=[[252.06,-288.41,-537.90],[0.705172,-0.0164156,0.708712,0.0137963],[0,-1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget VS_Failure30:=[[-488.16,-224.24,-548.06],[0.685689,0.204651,0.674036,-0.183368],[0,-1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !New Vision Locations
    CONST robtarget Vision1:=[[5.40,328.11,-534.04],[0.00425539,0.713002,-0.701131,-0.00497227],[-1,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Vision2:=[[41.84,329.47,-458.67],[0.705197,-0.00574077,0.708981,0.00321893],[-1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Vision3:=[[38.86,331.45,-458.63],[0.00317939,0.703781,0.012116,0.710306],[-1,0,3,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !Brass vs steel check locations
    CONST robtarget BrassCheck_App10:=[[-12.65,278.04,-616.01],[0.70517,-0.00645951,0.708996,0.00424275],[-1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BrassCheck_400:=[[129.38,277.07,-615.98],[0.705151,-0.00662964,0.709014,0.00412145],[-1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BrassCheck_600:=[[123.41,279.82,-605.83],[0.705154,-0.00642543,0.709012,0.00426513],[-1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BrassCheck_800:=[[117.78,280.81,-595.46],[0.705192,-0.00650969,0.708974,0.00420668],[-1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BrassCheck_Dep10:=[[-12.66,278.04,-616.01],[0.705168,-0.00646505,0.708998,0.00424005],[-1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget LaserPrePlace:=[[-32.68,281.90,-592.01],[0.00344212,-0.706822,-0.00299791,-0.707377],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !LASER REGRIP (LR)
    CONST robtarget LR_Home:=[[-17.92,242.55,-215.49],[0.499741,-0.510374,0.495098,-0.494627],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_10:=[[-104.95,477.51,-317.10],[0.65678,-0.247163,0.668357,0.246676],[-1,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_70:=[[-203.89,-61.40,-143.35],[0.690978,0.179617,0.67402,-0.189694],[0,-1,2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget LR_F400_20:=[[37.81,-61.96,-154.31],[0.642343,-0.281385,0.653659,0.284515],[0,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_F400_30:=[[39.52,-61.92,-38.70],[0.642341,-0.28137,0.653673,0.284502],[0,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_9F400_30:=[[39.54,-61.90,-37.46],[0.642342,-0.281369,0.653671,0.284505],[0,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_F400_40:=[[-6.55,-115.73,-37.99],[0.642347,-0.281566,0.653633,0.284386],[0,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_F400_50:=[[-33.06,-26.84,-37.60],[0.649924,0.257034,0.66639,-0.259726],[0,-1,2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_F400_60:=[[40.38,-96.27,-38.69],[0.649921,0.257061,0.6664,-0.259679],[0,-1,2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_9F400_60:=[[40.87,-95.77,-37.66],[0.649933,0.257046,0.666393,-0.259681],[0,-1,2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_F600_20:=[[38.57,-61.79,-86.19],[0.642469,-0.281375,0.653575,0.284431],[0,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_F600_30:=[[39.25,-61.78,-40.09],[0.642464,-0.281361,0.653588,0.284425],[0,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_F600_40:=[[15.80,-88.57,-38.92],[0.647113,-0.283141,0.648923,0.282799],[0,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_F600_50:=[[-31.19,-27.46,-38.21],[0.662178,0.254192,0.656042,-0.257907],[0,-1,2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_F600_60:=[[40.76,-92.71,-40.89],[0.649791,0.256984,0.666459,-0.259928],[0,-1,2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget LR_F800_20:=[[38.57,-61.78,-86.18],[0.642472,-0.281376,0.653571,0.284433],[0,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_F800_30:=[[39.15,-61.79,-45.68],[0.642626,-0.281275,0.653437,0.284493],[0,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_F800_40:=[[15.80,-88.57,-38.93],[0.64711,-0.28314,0.648927,0.282797],[0,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_F800_50:=[[-31.19,-27.46,-38.21],[0.662178,0.254197,0.656041,-0.257903],[0,-1,2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_F800_60:=[[40.08,-87.62,-47.45],[0.649793,0.256876,0.666444,-0.26007],[0,-1,2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget LR_N400_20:=[[23.14,-78.53,-122.25],[0.632455,-0.312039,0.633043,0.319201],[0,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_N400_30:=[[24.51,-78.47,-31.27],[0.630456,-0.313373,0.635049,0.317861],[0,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_N400_40:=[[-15.42,-135.04,-28.34],[0.632541,-0.312268,0.632962,0.318967],[0,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_N400_50:=[[-9.48,-78.52,-27.14],[0.669072,0.225266,0.668548,-0.233756],[0,-1,2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_N400_60:=[[27.94,-111.66,-29.87],[0.670007,0.222492,0.66955,-0.230846],[0,-1,2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_N9400_30:=[[24.54,-78.53,-29.26],[0.629899,-0.315064,0.63564,0.316106],[0,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_N9400_60:=[[28.31,-112.23,-28.31],[0.667409,0.223409,0.67215,-0.229929],[0,-1,2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_N600_20:=[[31.23,-66.87,-119.53],[0.642543,-0.281372,0.653421,0.28462],[0,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_N600_30:=[[32.46,-66.85,-36.44],[0.642554,-0.281374,0.653422,0.28459],[0,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_N600_309N:=[[32.49,-66.85,-34.78],[0.642556,-0.281372,0.65342,0.284595],[0,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_N600_40:=[[15.80,-88.57,-38.92],[0.647112,-0.283143,0.648924,0.282798],[0,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_N600_50:=[[-31.19,-27.48,-38.19],[0.662186,0.254192,0.656031,-0.257913],[0,-1,2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_N600_60:=[[33.31,-97.04,-35.53],[0.660053,0.247855,0.658218,-0.263907],[0,-1,2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_N600_609N:=[[33.31,-97.03,-35.53],[0.650138,0.251775,0.668015,-0.260167],[0,-1,2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_N800_20:=[[33.77,-65.11,-160.96],[0.644036,-0.277606,0.655216,0.280793],[0,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_N800_30:=[[35.59,-65.08,-39.09],[0.644018,-0.277594,0.655242,0.280784],[0,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_N800_40:=[[-13.29,-117.65,-38.33],[0.644027,-0.277615,0.655229,0.280774],[0,0,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_N800_50:=[[-31.21,-27.03,-38.22],[0.662176,0.254205,0.656045,-0.25789],[0,-1,2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LR_N800_60:=[[35.75,-92.03,-37.33],[0.660371,0.2496,0.657815,-0.262467],[0,-1,2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !Vision VARIABLES
    VAR byte laserRegripZOffset;
    VAR bool VisionUP;
    VAR byte flowPos;
    PERS byte cameraOnline;
    VAR byte VisionWait;
    VAR num VisionErrorOnLastPart;
    PERS num failedPartNums{25}:=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
    VAR byte VisionFailure;
    VAR bool retryVision:=FALSE;
    PERS bool chuteFull:=FALSE;


    VAR bool isVisionFinished:=FALSE;
    VAR num brassCheckTime:=0.25;

    VAR num discardedInRow:=0;

    PERS num signalValueArray{15}:=[85,112,119,97,114,100,115,0,0,0,0,0,0,0,0];
    PERS string cameraResult:="Upwards";

    PROC Vision_Startup()
        !Clear any previous camera errors on startup
        SetDO Camera_ClearError,1;
        WaitTime 0.1;
        SetDO Camera_ClearError,0;

        !Turn the camera online
        SetDO Camera_SetOffline,0;

        !Set the rest of the outputs to default states
        SetDO Camera_Inspection_Results_Ack,0;
        SetDO Camera_ExecuteCommand,0;
        SetDO Camera_Trigger,0;
        SetDO Camera_TriggerEnable,1;
        SetDO Camera_ExternalEvent0,0;
        SetDO Camera_ExternalEvent1,0;
        SetDO Camera_ExternalEvent2,0;
        SetDO Camera_ExternalEvent3,0;
        SetDO Camera_ExternalEvent4,0;
        SetDO Camera_ExternalEvent5,0;
        SetDO Camera_ExternalEvent6,0;
        SetDO Camera_ExternalEvent7,0;
        SetDO Camera_ClearExposureComplete,0;
        SetGO Camera_CommandID,0;

        !Wait a split second for the camera to respond
        WaitTime .1;
    ENDPROC

    PROC Vision_LoadJob()
        !This program loads the appropriate Vision job. jobNum is named after the prefix of the job saved on the Cognex camera. For example: Job "1_400S" is represented by the value "1" here
        SetDO Camera_Trigger,0;
        SetDO Camera_TriggerEnable,0;
        SetDO Camera_ClearError,1;
        WaitTime .1;
        SetDO Camera_ClearError,0;
        WaitTime .1;
        SetDO Camera_SetOffline,1;
        WaitTime .1;
        SetGO Camera_CommandID,partNumber;
        !Camera job is the number in front of the underscore in the name
        !After all of these have been set, the camera can now be turned online (turn off camera offline)
        WaitTime .1;
        SetDO Camera_ExecuteCommand,1;
        WaitDI Camera_CommandCompleted,1;

        SetGO Camera_CommandID,0;
        SetDO Camera_ExecuteCommand,0;
        SetDO Camera_SetOffline,0;
        WaitTime .1;
        SetDO Camera_TriggerEnable,1;

        WaitDI Camera_Online,1;
    ENDPROC

    FUNC bool BrassCheck()
        VAR bool result:=FALSE;

        RetryBrassCheck:

        PathAccLim TRUE\AccMax:=2.5,TRUE\DecelMax:=2.5;
        MoveJ VS_Home,vmax,z10,gripper\WObj:=wobj_Vision;
        PathAccLim FALSE,FALSE;

        PathAccLim TRUE\AccMax:=2.5,TRUE\DecelMax:=2.5;
        MoveL BrassCheck_App10,vmax,z100,gripper\WObj:=wobj_Vision;
        IF partNumber=1 OR partNumber=2 OR partNumber=3 OR partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18 OR partNumber=19
        THEN
            MoveL BrassCheck_400,v800,fine,gripper\WObj:=wobj_Vision;
        ELSEIF partNumber=4 OR partNumber=5 OR partNumber=6 OR partNumber=10 OR partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21 OR partNumber=22
        THEN
            MoveL BrassCheck_600,v800,fine,gripper\WObj:=wobj_Vision;
        ELSEIF partNumber=7 OR partNumber=8 OR partNumber=9 OR partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24 OR partNumber=25
        THEN
            MoveL BrassCheck_800,v800,fine,gripper\WObj:=wobj_Vision;
        ENDIF
        WaitTime brassCheckTime;
        IF BrassCheckSensor=1
        THEN
            result:=TRUE;
        ELSE
            result:=FALSE;
        ENDIF
        MoveL BrassCheck_Dep10,v800,fine,gripper\WObj:=wobj_Vision;
        PathAccLim FALSE,FALSE;


        !Depending on the result discard the part and retry or continue
        IF partNumber=3 OR partNumber=6 OR partNumber=9 OR partNumber=10 OR partNumber=19 OR partNumber=22 OR partNumber=25
        THEN
            !These are supposed to be brass so make sure they are
            IF result=FALSE
            THEN
                Ver;
            ELSE
                RETURN TRUE;
            ENDIF
        ELSE
            !These are not supposed to be brass so make sure they are not
            IF result
            THEN
                Ver;
            ELSE
                RETURN TRUE;
            ENDIF
        ENDIF
        GOTO retryBrassCheck;
    ENDFUNC

    PROC NewVision()
        VAR bool brassCheckPassed:=FALSE;
        !Check material before running vision

        discardedInRow:=0;
        RestartVisionPoint:

        IF Gripper_PartPresent=0
        THEN
            stacklights.blinkColorStatus.Orange:=TRUE;
            TPWrite "No part present at Vision";
            !Ping for the operator
            PulseDO\PLength:=3,Audible;
            STOP;
            EXIT;
        ENDIF
        flowPos:=0;
        isVisionFinished:=FALSE;

        brassCheckPassed:=BrassCheck();

        !Move to the first vision location, regardless if it is a check, flow or needle, a pass means it can move on
        !Checks should never fail since it is just presence and flows / needles means it needs a regrip, since it should never fail checks just regrip until discard if it does
        MoveJ Vision1,vmax,fine,gripper\WObj:=wobj_Vision;

        triggerCamera;

        IF getCameraReturnString()="Present" AND GInputDnum(Camera_ResultsConfidence)>70
        THEN
            !All Good to continue, part present and flow / needle port seen
        ELSE
            !Something is wrong, rotate the part or discard depending on type and retry
            IF partNumber<=9
            THEN
                !Discard Part
                VER;
            ELSE
                !Rotate Part
                IF rotate>=4
                THEN
                    VisionError;
                    rotate:=1;
                    Chute;
                    !Check if that happened to be the last part
                    IF Gripper_PartPresent=0
                    THEN
                        !Break out of this Vision loop and finish off the part number
                        skipToNextPart:=TRUE;
                    ELSE
                        retryVision:=TRUE;
                    ENDIF
                ELSE
                    Laser_Regrip;
                ENDIF
            ENDIF
        ENDIF

        IF retryVision AND chuteFull=FALSE
        THEN
            retryVision:=FALSE;
            GOTO RestartVisionPoint;
        ENDIF

        !Move to second vision position, up / down check
        MoveJ Vision2,vmax,fine,gripper\WObj:=wobj_Vision;

        triggerCamera;

        IF getCameraReturnString()="Upwards" AND GInputDnum(Camera_ResultsConfidence)>70
        THEN
            !The next result at position 3 should be downwards
            MoveJ Vision3,vmax,fine,gripper\WObj:=wobj_Vision;

            triggerCamera;

            IF getCameraReturnString()="Downwards" AND GInputDnum(Camera_ResultsConfidence)>70
            THEN
                !If the startup sequence is still running we can wait for that
                IF runStartupAsync
                THEN
                    WaitSyncTask sync1,task_sync_list;
                    partNotMarkedCounter:=0;
                ENDIF
                Laser_Dropoff1;
            ELSE
                !There was a vision error
                Ver;
            ENDIF

        ELSEIF getCameraReturnString()="Downwards" AND GInputDnum(Camera_ResultsConfidence)>70
        THEN
            !The next result at position 3 should be upwards
            MoveJ Vision3,vmax,fine,gripper\WObj:=wobj_Vision;

            triggerCamera;

            IF getCameraReturnString()="Upwards" AND GInputDnum(Camera_ResultsConfidence)>70
            THEN
                !If the startup sequence is still running we can wait for that
                IF runStartupAsync
                THEN
                    WaitSyncTask sync1,task_sync_list;
                    partNotMarkedCounter:=0;
                ENDIF
                Laser_Dropoff2;
            ELSE
                !There is a vision error
                Ver;
            ENDIF

        ELSE
            !Something went wrong and we need to discard and retry
            VER;
        ENDIF

        IF retryVision AND chuteFull=FALSE
        THEN
            retryVision:=FALSE;
            GOTO RestartVisionPoint;
        ENDIF
    ENDPROC

    FUNC string getCameraReturnString()
        cameraResult:="";

        signalValueArray{1}:=DnumToNum(GInputDnum(Camera_ResultsChar1));
        signalValueArray{2}:=DnumToNum(GInputDnum(Camera_ResultsChar2));
        signalValueArray{3}:=DnumToNum(GInputDnum(Camera_ResultsChar3));
        signalValueArray{4}:=DnumToNum(GInputDnum(Camera_ResultsChar4));
        signalValueArray{5}:=DnumToNum(GInputDnum(Camera_ResultsChar5));
        signalValueArray{6}:=DnumToNum(GInputDnum(Camera_ResultsChar6));
        signalValueArray{7}:=DnumToNum(GInputDnum(Camera_ResultsChar7));
        signalValueArray{8}:=DnumToNum(GInputDnum(Camera_ResultsChar8));
        signalValueArray{9}:=DnumToNum(GInputDnum(Camera_ResultsChar9));
        signalValueArray{10}:=DnumToNum(GInputDnum(Camera_ResultsChar10));
        signalValueArray{11}:=DnumToNum(GInputDnum(Camera_ResultsChar11));
        signalValueArray{12}:=DnumToNum(GInputDnum(Camera_ResultsChar12));
        signalValueArray{13}:=DnumToNum(GInputDnum(Camera_ResultsChar13));
        signalValueArray{14}:=DnumToNum(GInputDnum(Camera_ResultsChar14));
        signalValueArray{15}:=DnumToNum(GInputDnum(Camera_ResultsChar15));

        FOR i FROM 1 TO Dim(signalValueArray,1) DO
            IF signalValueArray{i}>0
            THEN
                !Append this character onto the string
                cameraResult:=cameraResult+ByteToStr(signalValueArray{i}\Char);
            ENDIF
        ENDFOR

        RETURN cameraResult;
    ENDFUNC

    PROC triggerCamera()
        !Make sure the camera is online first, otherwise just wait until it is online (Helpful for debugging especially)
        WaitDI Camera_Online,1;
        
        !Wait .1 seconds just to make sure robot is not still moving to position
        WaitTime .1;

        !Trigger the camera
        SetDO Camera_Trigger,1;
        WaitTime .25;
        SetDO Camera_Trigger,0;

        !Stop;
    ENDPROC

    PROC VER()
        !Vision Error Routine
        VisionError;

        !Cancel this run from going towards the cycle time
        dropCycleCount:=TRUE;

        IF VisionFailure=0
        THEN
            IF chuteFull=FALSE
            THEN
                Chute;
            ENDIF
            IF chuteEmpty=1
                THEN
                !Set a variable to tell the main loop program that the last part is finished and to move to next part number
                VisionErrorOnLastPart:=1;
                UpdateTP("Vision Error On Last Part: Moving to next part number");
                PrintTP;
            ENDIF
            !Check the next part which has been grabbed if it was not the last one
            IF VisionErrorOnLastPart=0
            THEN
                retryVision:=TRUE;
            ENDIF
        ENDIF

    ENDPROC

    PROC VisionError()
        !A variable created for the website
        partDiscarded:=partDiscarded+1;

        MoveJ VS_Home,v600,z10,gripper\WObj:=wobj_Vision;
        MoveJ VS_Failure10,v600,z10,gripper\Wobj:=wobj_Vision;
        MoveJ VS_Failure20,v600,fine,gripper\Wobj:=wobj_Vision;
        Release;
        MoveJ VS_Failure30,v600,fine,gripper\Wobj:=wobj_Vision;
        visionDiscardCount:=(visionDiscardCount+1);
        UpdateTP("Vision error: Part has been discarded");
        PrintTP;
        IF visionDiscardCount>15
            THEN
            SetDO Stack_Light_R,1;
            TPWrite "Vision has failed. Check part cleanliness, thread, and material";
            VisionFailure:=1;
        ENDIF

        discardedInRow:=discardedInRow+1;
        IF discardedInRow>=5
        THEN
            SetDO Stack_Light_R,1;
            TPWrite "Vision has for a part number, switching to next job";

            VisionFailure:=1;
            VisionErrorOnLastPart:=1;
        ENDIF

        !Waiting for website to catch up, max of 15 seconds
        IF runWithWebsiteEnabled
        THEN
            WaitTime(18);
        ENDIF
    ENDPROC

    PROC Laser_Regrip()
        !TPWrite "No port found. Part must be reoriented";
        !This will offset the Z height to account for all sizes including N400, N600, N800, F400, F600, and F800
        MoveJ LR_Home,v400,z10,gripper\WObj:=wobj_Laser;

        !Check if the grippers have a part
        IF Gripper_PartPresent=1
        THEN
            !Good to go, continue with Vision routine
            MoveJ LR_10,v400,z10,gripper\WObj:=wobj_Laser;

            IF partNumber=11
            THEN
                MoveJ LR_N400_20,v400,fine,gripper\WObj:=wobj_Laser;
                MoveL LR_N400_30,v200,fine,gripper\WObj:=wobj_Laser;
                Release;
                MoveL LR_N400_40,v200,fine,gripper\WObj:=wobj_Laser;
                MoveJ LR_N400_50,v400,z10,gripper\WObj:=wobj_Laser;
                MoveJ LR_N400_60,v400,z10,gripper\WObj:=wobj_Laser;

            ELSEIF partNumber=12
            THEN
                MoveJ LR_N400_20,v400,fine,gripper\WObj:=wobj_Laser;
                MoveL LR_N9400_30,v200,fine,gripper\WObj:=wobj_Laser;
                Release;
                MoveL LR_N400_40,v200,fine,gripper\WObj:=wobj_Laser;
                MoveJ LR_N400_50,v400,z10,gripper\WObj:=wobj_Laser;
                MoveJ LR_N9400_60,v400,z10,gripper\WObj:=wobj_Laser;

            ELSEIF partNumber=10 OR partNumber=13 OR partNumber=14
            THEN
                MoveJ LR_N600_20,v400,fine,gripper\WObj:=wobj_Laser;
                IF partNumber=14
                THEN
                    MoveJ LR_N600_309N,v200,z10,gripper\WObj:=wobj_Laser;
                ELSE
                    MoveJ LR_N600_30,v200,z10,gripper\WObj:=wobj_Laser;
                ENDIF
                Release;
                MoveJ LR_N600_40,v200,z10,gripper\WObj:=wobj_Laser;
                MoveJ LR_N600_50,v400,z10,gripper\WObj:=wobj_Laser;
                IF partNumber=14
                THEN
                    MoveJ LR_N600_609N,v400,z10,gripper\WObj:=wobj_Laser;
                ELSE
                    MoveJ LR_N600_60,v400,z10,gripper\WObj:=wobj_Laser;
                ENDIF
            ELSEIF partNumber=15 OR partNumber=16
            THEN
                MoveJ LR_N800_20,v400,fine,gripper\WObj:=wobj_Laser;
                MoveJ LR_N800_30,v200,z10,gripper\WObj:=wobj_Laser;
                Release;
                MoveJ LR_N800_40,v200,z10,gripper\WObj:=wobj_Laser;
                MoveJ LR_N800_50,v400,z10,gripper\WObj:=wobj_Laser;
                MoveJ LR_N800_60,v400,z10,gripper\WObj:=wobj_Laser;

            ELSEIF partNumber=18
            THEN
                MoveJ LR_F400_20,v400,fine,gripper\WObj:=wobj_Laser;
                MoveJ LR_9F400_30,v200,z10,gripper\WObj:=wobj_Laser;
                Release;
                MoveJ LR_F400_40,v200,z10,gripper\WObj:=wobj_Laser;
                MoveJ LR_F400_50,v400,z10,gripper\WObj:=wobj_Laser;
                MoveJ LR_9F400_60,v400,z10,gripper\WObj:=wobj_Laser;

            ELSEIF partNumber=17 OR partNumber=19
            THEN
                MoveJ LR_F400_20,v400,fine,gripper\WObj:=wobj_Laser;
                MoveJ LR_F400_30,v200,z10,gripper\WObj:=wobj_Laser;
                Release;
                MoveJ LR_F400_40,v200,z10,gripper\WObj:=wobj_Laser;
                MoveJ LR_F400_50,v400,z10,gripper\WObj:=wobj_Laser;
                MoveJ LR_F400_60,v400,z0,gripper\WObj:=wobj_Laser;
            ELSEIF partNumber=20 OR partNumber=21 OR partNumber=22
            THEN
                MoveJ LR_F600_20,v400,fine,gripper\WObj:=wobj_Laser;
                MoveJ LR_F600_30,v200,z10,gripper\WObj:=wobj_Laser;
                Release;
                MoveJ LR_F600_40,v200,z10,gripper\WObj:=wobj_Laser;
                MoveJ LR_F600_50,v400,z10,gripper\WObj:=wobj_Laser;
                MoveJ LR_F600_60,v400,z10,gripper\WObj:=wobj_Laser;

            ELSEIF partNumber=23 OR partNumber=24 OR partNumber=25
            THEN
                MoveJ LR_F800_20,v400,fine,gripper\WObj:=wobj_Laser;
                MoveJ LR_F800_30,v200,z10,gripper\WObj:=wobj_Laser;
                Release;
                MoveJ LR_F800_40,v200,z10,gripper\WObj:=wobj_Laser;
                MoveJ LR_F800_50,v400,z10,gripper\WObj:=wobj_Laser;
                MoveJ LR_F800_60,v400,z10,gripper\WObj:=wobj_Laser;
            ENDIF
            WaitTime 0.5;
            Grip;
            MoveJ LR_70,v200,z10,gripper\WObj:=wobj_Laser;
        ELSE
            !Vision error, most likely on last part. End this part number and continue routine

            !Move to Laser Pickup Home
            MoveJ LP_Home,v600,z10,gripper\WObj:=wobj_Laser;
            Release;
        ENDIF

        rotate:=(rotate+1);
        retryVision:=TRUE;
    ENDPROC


ENDMODULE