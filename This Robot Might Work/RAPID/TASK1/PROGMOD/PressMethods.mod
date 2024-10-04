MODULE PressMethods

    !BUSHING DROPOFF (BD)
    CONST robtarget BD_Home:=[[-543.60,284.92,-440.03],[0.206725,0.681059,-0.202967,0.672479],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget BD400_Home:=[[-122.81,279.47,-207.11],[0.00606578,0.701456,-0.0013133,0.712686],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BD400_App10:=[[1.79,277.89,-168.38],[0.00607433,0.701464,-0.00131284,0.712677],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BD400_App20:=[[192.31,278.11,-146.30],[0.00634518,0.701391,-0.00128531,0.712747],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BD400_Drop:=[[191.62,276.71,-130.57],[0.00630309,0.701416,-0.00133871,0.712722],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BD400_Dep10:=[[189.71,275.98,-149.89],[0.00612232,0.701429,-0.00134498,0.712712],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BD400_Dep20:=[[1.79,277.89,-168.38],[0.00608351,0.701466,-0.00130615,0.712676],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget BD600_Home:=[[-122.81,279.47,-207.11],[0.00606741,0.701455,-0.00131169,0.712686],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BD600_App20:=[[191.04,274.27,-167.89],[0.00614179,0.701369,-0.00141094,0.71277],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BD600_Drop:=[[192.72,275.06,-148.03],[0.00631863,0.701409,-0.00133505,0.712729],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BD600_Dep10:=[[190.05,275.93,-168.77],[0.00611302,0.701461,-0.00129315,0.71268],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BD600_Dep20:=[[1.79,277.89,-168.38],[0.00608318,0.701466,-0.00130701,0.712675],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget BD800_Home:=[[85.15,276.60,-191.97],[0.00677861,0.70116,-0.00257541,0.712967],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BD800_App10:=[[192.90,276.91,-176.74],[0.00689249,0.70105,-0.00268171,0.713073],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BD800_Drop:=[[192.00,277.36,-149.85],[0.00692453,0.701049,-0.00262146,0.713074],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BD800_Dep10:=[[86.63,275.80,-163.38],[0.00676439,0.701183,-0.00260607,0.712945],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BD800_Dep20:=[[-38.57,277.12,-230.62],[0.00674259,0.701147,-0.00273868,0.71298],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !PRESS DROPOFF (PD)
    CONST robtarget PD_Home:=[[-220.49,339.68,-424.65],[0.007395,-0.71591,-0.0432783,-0.696811],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget PD_400_App10:=[[-93.35,278.83,-128.52],[0.00307686,0.714305,0.00348537,0.699819],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PD_F400_App20:=[[129.59,278.25,-93.23],[0.0024665,0.714069,0.00394037,0.70006],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PD_N400_App20:=[[135.23,279.12,-105.76],[0.00308674,0.714366,0.00353336,0.699757],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PD_400_Dep10:=[[102.37,279.80,-82.81],[0.00318013,0.714362,0.00349796,0.69976],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PD_F400_Place:=[[129.24,277.85,-83.82],[0.00249051,0.714058,0.00396596,0.700071],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PD_9F400_Place:=[[128.78,277.73,-82.90],[0.00246877,0.714071,0.00391701,0.700058],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PD_N400_Place:=[[135.23,279.12,-87.76],[0.00307746,0.714363,0.00352789,0.699759],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget PD_600_App10:=[[-93.35,278.83,-128.52],[0.00308499,0.714307,0.0034897,0.699817],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PD_F600_App20:=[[127.44,273.35,-124.41],[0.00300461,0.71424,0.00336723,0.699887],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PD_N600_App20:=[[138.51,273.92,-128.42],[0.00288361,0.714217,0.00332602,0.69991],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PD_600_Dep10:=[[100.45,276.78,-99.97],[0.00307853,0.714276,0.00346277,0.699849],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PD_F600_Place:=[[128.21,273.98,-107.39],[0.0031512,0.714245,0.00343687,0.69988],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PD_N600_Place:=[[138.98,273.65,-107.90],[0.00289672,0.714187,0.00331065,0.699941],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PD_9N600_Place:=[[138.63,273.49,-106.79],[0.00311484,0.714232,0.003425,0.699894],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget PD_800_App10:=[[-93.35,278.83,-128.52],[0.0030829,0.714306,0.00348826,0.699818],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PD_F800_App20:=[[124.53,277.51,-134.73],[0.00353995,0.713585,0.00302631,0.700553],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PD_N800_App20:=[[134.02,274.26,-154.62],[0.0032539,0.714167,0.00320158,0.69996],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PD_800_Dep10:=[[89.38,274.98,-100.35],[0.00287669,0.714347,0.00349041,0.699777],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PD_F800_Place:=[[123.57,277.56,-113.79],[0.0035512,0.713575,0.00303524,0.700563],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PD_N800_Place:=[[137.13,276.18,-113.81],[0.00338767,0.714765,0.00325899,0.699348],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !PRESS PICKUP (PP)
    CONST robtarget PP_Home:=[[-225.37,329.88,-604.47],[0.00657688,-0.715748,-0.0425303,-0.697031],[-1,1,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget PP_400_Dep10:=[[138.18,279.94,-118.40],[0.00313443,0.714256,0.00350514,0.699868],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PP_400_Dep20:=[[-107.89,278.92,-147.90],[0.0031017,0.714287,0.00346993,0.699838],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PP_400_Pick:=[[137.91,280.26,-75.67],[0.00318145,0.714279,0.00355101,0.699845],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget PP_600_Dep10:=[[133.54,273.33,-148.18],[0.00277408,0.714214,0.00320855,0.699915],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PP_600_Dep20:=[[-32.39,273.09,-147.37],[0.00306588,0.714271,0.0034461,0.699854],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PP_600_Pick:=[[133.23,273.71,-97.98],[0.0028399,0.714239,0.0032673,0.699889],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget PP_800_App10:=[[237.63,62.71,38.91],[0.00696575,-0.700586,0.000781971,0.713533],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PP_800_Dep10:=[[119.95,276.28,-162.95],[0.00283834,0.714222,0.00296194,0.699907],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PP_800_Dep20:=[[-86.43,273.62,-179.92],[0.00304983,0.714219,0.00316646,0.699909],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PP_800_Pick:=[[119.56,276.78,-98.22],[0.00289834,0.714226,0.00302994,0.699902],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !Bushing Check (BC)
    CONST robtarget BC_Home:=[[-88.22,210.81,-106.48],[0.00465421,-0.716017,-0.0398854,-0.696927],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BC_App10:=[[-51.63,214.53,-88.70],[0.48442,0.518445,0.497469,0.499076],[-1,0,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BC_400_App20:=[[-28.47,240.54,-81.35],[0.484834,0.518076,0.497243,0.499282],[-1,0,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BC_600_App20:=[[-30.20,240.66,-61.99],[0.484545,0.518331,0.497418,0.499123],[-1,0,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BC_800_App20:=[[-45.96,230.12,-83.89],[0.484551,0.518333,0.497561,0.498973],[-1,0,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget BC_Dept_10:=[[-99.55,227.57,-95.58],[0.484498,0.518345,0.497367,0.499205],[-1,0,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    

    !BUSHING PRESS VARIABLES
    PERS bool failedBushingFamilies{3}:=[FALSE,FALSE,FALSE];
    VAR bool skipBushingOnce:=FALSE;
    VAR num bushingFailedNum:=0;

    !*****PRESS INFORMATION*****
    !   Manufacturer:           Tox Pressotechnik (German company)
    !   Type:                   MCC-04
    !   Capacity:               4 tons
    !   Max Air Pressure:       90 PSI
    !   Total Stroke:           7.87 in
    !   Power Stroke:           .39 in
    !   Serial #:               207921
    !   Manufacture Date:       11-1-02
    !   Manufacture location:   Warrenville, IL 60555
    !   Manufacture Tel:        (630)-393-0300
    !   Manufacture Fax:        (630)-393-6800
    !   Type:                   KWE 4.30.200.10 US
    !   Power by:               Kraftpaket
    !   Maximum op pressure:    90 PSI

    PROC Bushing_Dropoff()
        WaitDI s9,1;
        !Wait for bushing cabinet door safety sensors to be initiated (Door closed)
        WaitDI s10,1;
        SetDO SolB_1,1;
        SetDO SolB_2,0;
        SetDO SolB_4,0;
        !Turn on 20PSI pressure for Actuators
        SetDO SolB_8,1;

        IF partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18
        THEN
            Set_Actuator(1);
            WaitDI Press_Sensor2,1;
            MoveJ BD_Home,v1000,z100,gripper\WObj:=wobj_Press;
            MoveJ BD400_Home,v1000,z20,gripper\WObj:=wobj_Press;
            MoveJ BD400_App10,v800,z15,gripper\WObj:=wobj_Press;
            MoveJ BD400_App20,v600,z10,gripper\WObj:=wobj_Press;
            MoveL BD400_Drop,v60,fine,gripper\WObj:=wobj_Press;
            Release;
            MoveJ BD400_Dep10,v400,fine,gripper\WObj:=wobj_Press;
            MoveJ BD400_Dep20,v600,z10,gripper\WObj:=wobj_Press;
            PulseDO\PLength:=2,Act_1;

        ELSEIF partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21
        THEN
            Set_Actuator(3);
            WaitDI Press_Sensor2,1;
            MoveJ BD_Home,v1000,z100,gripper\WObj:=wobj_Press;
            MoveJ BD600_Home,v1000,z20,gripper\WObj:=wobj_Press;
            MoveL BD600_App20,v600,z10,gripper\WObj:=wobj_Press;
            MoveL BD600_Drop,v60,fine,gripper\WObj:=wobj_Press;
            Release;
            MoveL BD600_Dep10,v400,fine,gripper\WObj:=wobj_Press;
            MoveJ BD600_Dep20,v600,z10,gripper\WObj:=wobj_Press;
            PulseDO\PLength:=2,Act_3;

        ELSEIF partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24
        THEN
            Set_Actuator(2);
            WaitDI Press_Sensor2,1;
            MoveJ BD_Home,v1000,z100,gripper\WObj:=wobj_Press;
            MoveJ BD800_Home,v1000,z20,gripper\WObj:=wobj_Press;
            MoveJ BD800_App10,v800,z10,gripper\WObj:=wobj_Press;
            MoveL BD800_Drop,v60,fine,gripper\WObj:=wobj_Press;
            Release;
            MoveJ BD800_Dep10,v400,fine,gripper\WObj:=wobj_Press;
            MoveJ BD800_Dep20,v600,z10,gripper\WObj:=wobj_Press;
            PulseDO\PLength:=2,Act_2;

        ENDIF
        SetDO SolA_1,0;
        SetDO SolA_2,0;
        SetDO SolA_4,0;
        SetDO SolA_8,1;
        MoveJ BD_Home,v1000,z100,gripper\WObj:=wobj_Press;
    ENDPROC

    PROC Bushing_Press_Check()
        !If it was a bad bushing press then we need to make sure that the fixture is clear (Using the cognex Snapp again), if it is retry the drop on another part
        !this will require skipping the bushing press check, the bushing pickup and place in press, while still dropping on conveyor
        IF retryPress
        THEN
            IF CognexSnappProgNum=1 OR CognexSnappProgNum=2
            THEN
                CognexSnappProgNum:=7;
                WaitTime 5;
            ELSEIF CognexSnappProgNum=3 OR CognexSnappProgNum=4
            THEN
                CognexSnappProgNum:=8;
                WaitTime 5;
            ELSEIF CognexSnappProgNum=5 OR CognexSnappProgNum=6
            THEN
                CognexSnappProgNum:=9;
                WaitTime 5;
            ELSE
                !Default will fail if the fixture is not out etc
                CognexSnappProgNum:=7;
                WaitTime 5;
            ENDIF

            WaitTime 1;
            CognexSnapp_TakePicture;

            FOR i FROM 1 TO 50 DO
                IF snapStatus=1
                THEN
                    !The fixture is good to continue
                    MoveJ BC_Dept_10,v800,z100,gripper\WObj:=wobj_Press;
                    !Moving to departure position 1
                    !MoveJ BC_Home,v600,z10,gripper\WObj:=wobj_Press;
                    !Moving to the home position for the press check
                    MoveJ PP_Home,v800,fine,gripper\WObj:=wobj_Press;
                    !Moving to the Press Pickup Home since it can access conveyor without hitting the drawers

                    GOTO SKIPBUSHINGCHECK;
                ELSEIF snapStatus=2 OR snapStatus=3
                THEN
                    !The fixture has something in it so we should fail the parts anyways
                ENDIF
                WaitTime .1;
            ENDFOR
        ENDIF

        !This checks if the bushing is in the body

        MoveJ BC_Home,v1000,z50,gripper\WObj:=wobj_Press;
        !Moving to the home position for the press check
        MoveJ BC_App10,v1000,z10,gripper\WObj:=wobj_Press;
        !Rotating the body to be oriented correctly and moving a bit closer to the sensors

        !Changing the Z height depending on which bushing size it is
        IF partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18
        THEN
            !400 Parts
            MoveJ BC_400_App20,v400,fine,gripper\WObj:=wobj_Press;
        ELSEIF partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21
        THEN
            !600 Parts
            MoveJ BC_600_App20,v400,fine,gripper\WObj:=wobj_Press;
        ELSEIF partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24
        THEN
            !800 Parts
            MoveJ BC_800_App20,v400,fine,gripper\WObj:=wobj_Press;
        ENDIF

        !Check if the bushing can be seen by the sensor
        WaitTime 0.75;
        IF Press_Sensor1=0
		THEN
            !This part is missing a bushing
            MoveL BC_Dept_10,v400,fine,gripper\WObj:=wobj_Press;
            !Moving to departure position 1
            MoveJ BC_Home,v600,z10,gripper\WObj:=wobj_Press;
            !Moving to the home position for the press check
            MoveJ PP_Home,v600,z10,gripper\WObj:=wobj_Press;
            !Moving to the Press Pickup Home since it can access conveyor without hitting the drawers

            stacklights.blinkColorStatus.Orange:=TRUE;

            IF (partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18 OR partNumber=19) AND failedBushingFamilies{1}=FALSE
            THEN
                failedBushingFamilies{1}:=TRUE;
                skipBushingOnce:=TRUE;
                bushingFailedNum:=currentJob{1};
            ELSEIF (partNumber=10 OR partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21 OR partNumber=22) AND failedBushingFamilies{2}=FALSE
            THEN
                failedBushingFamilies{2}:=TRUE;
                skipBushingOnce:=TRUE;
                bushingFailedNum:=currentJob{1};
            ELSEIF (partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24 OR partNumber=25) AND failedBushingFamilies{3}=FALSE
            THEN
                failedBushingFamilies{3}:=TRUE;
                skipBushingOnce:=TRUE;
                bushingFailedNum:=currentJob{1};
            ENDIF

            !Index conveyor
            con2YIndex:=1;
            indexConveyor:=TRUE;
            Waittime 5;

            !Put part on conveyor in position 1
            Conveyor;

            SetDO Act_1,0;
            SetDO Act_2,0;
            SetDO Act_3,0;

            !Closing the bushing cabinet drawers
            Close_All_Drawers(0);

            !Print error to flexpendont
            UpdateTP("Error: Bushing missing from last pressed part");
            PrintTP;
            !Ping the operator
            PulseDO\PLength:=3,Audible;

            !Wait for the website to catch up and assign a new (next) part number
            WaitTime(60);

        ELSE
            MoveJ BC_Dept_10,v800,z100,gripper\WObj:=wobj_Press;
            !Moving to departure position 1
            !MoveJ BC_Home,v600,z10,gripper\WObj:=wobj_Press;
            !Moving to the home position for the press check
            MoveJ PP_Home,v800,fine,gripper\WObj:=wobj_Press;
            !Moving to the Press Pickup Home since it can access conveyor without hitting the drawers
        ENDIF

        SKIPBUSHINGCHECK:

    ENDPROC

    PROC Press_Dropoff()
        IF partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18
        THEN
            MoveJ PD_Home,v1000,z100,gripper\WObj:=wobj_Press;
            MoveJ PD_400_App10,v1000,z100,gripper\WObj:=wobj_Press;
            IF partNumber=17
            THEN
                IF NOT(CognexSnappProgNum=1)
                THEN
                    CognexSnappProgNum:=1;
                    WaitTime 5;
                ENDIF
                MoveJ PD_F400_App20,v800,z10,gripper\WObj:=wobj_Press;
                MoveL PD_F400_Place,v50,fine,gripper\WObj:=wobj_Press;
                Release;
                MoveL PD_F400_Place,v600,fine,gripper\WObj:=wobj_Press;
            ELSEIF partNumber=18
            THEN
                IF NOT(CognexSnappProgNum=1)
                THEN
                    CognexSnappProgNum:=1;
                    WaitTime 5;
                ENDIF
                MoveJ PD_F400_App20,v800,z10,gripper\WObj:=wobj_Press;
                MoveL PD_9F400_Place,v60,fine,gripper\WObj:=wobj_Press;
                Release;
                MoveL PD_9F400_Place,v600,fine,gripper\WObj:=wobj_Press;
            ELSEIF partNumber=11 OR partNumber=12
            THEN
                IF NOT(CognexSnappProgNum=2)
                THEN
                    CognexSnappProgNum:=2;
                    WaitTime 5;
                ENDIF
                MoveJ PD_N400_App20,v800,z10,gripper\WObj:=wobj_Press;
                MoveL PD_N400_Place,v60,fine,gripper\WObj:=wobj_Press;
                Release;
                MoveL PD_N400_Place,v600,fine,gripper\WObj:=wobj_Press;
            ENDIF
            MoveJ PD_400_Dep10,v600,fine,gripper\WObj:=wobj_Press;

        ELSEIF partNumber=20 OR partNumber=13 OR partNumber=14 OR partNumber=21
        THEN
            MoveJ PD_Home,v1000,z100,gripper\WObj:=wobj_Press;
            MoveJ PD_600_App10,v1000,z100,gripper\WObj:=wobj_Press;
            IF partNumber=20 OR partNumber=21
            THEN
                IF NOT(CognexSnappProgNum=3)
                THEN
                    CognexSnappProgNum:=3;
                    WaitTime 5;
                ENDIF
                MoveJ PD_F600_App20,v800,z10,gripper\WObj:=wobj_Press;
                MoveJ PD_F600_Place,v60,fine,gripper\WObj:=wobj_Press;
                Release;
                MoveJ PD_F600_Place,v600,fine,gripper\WObj:=wobj_Press;
            ELSEIF partNumber=13 OR partNumber=14
            THEN
                IF NOT(CognexSnappProgNum=4)
                THEN
                    CognexSnappProgNum:=4;
                    WaitTime 5;
                ENDIF
                MoveJ PD_N600_App20,v800,z10,gripper\WObj:=wobj_Press;
                IF partNumber=14
                THEN
                    MoveL PD_9N600_Place,v60,fine,gripper\WObj:=wobj_Press;
                ELSE
                    MoveL PD_N600_Place,v60,fine,gripper\WObj:=wobj_Press;
                ENDIF
                Release;
            ENDIF
            MoveJ PD_600_Dep10,v600,fine,gripper\WObj:=wobj_Press;

        ELSEIF partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24
        THEN
            MoveJ PD_Home,v1000,z100,gripper\WObj:=wobj_Press;
            MoveJ PD_800_App10,v1000,z100,gripper\WObj:=wobj_Press;
            IF partNumber=23 OR partNumber=24
            THEN
                IF NOT(CognexSnappProgNum=5)
                THEN
                    CognexSnappProgNum:=5;
                    WaitTime 5;
                ENDIF
                MoveJ PD_F800_App20,v800,z10,gripper\WObj:=wobj_Press;
                MoveJ PD_F800_Place,v60,fine,gripper\WObj:=wobj_Press;
                Release;
                WaitTime 0.5;
                MoveJ PD_F800_Place,v600,fine,gripper\WObj:=wobj_Press;
            ELSEIF partNumber=15 OR partNumber=16
            THEN
                IF NOT(CognexSnappProgNum=6)
                THEN
                    CognexSnappProgNum:=6;
                    WaitTime 5;
                ENDIF
                MoveJ PD_N800_App20,v800,fine,gripper\WObj:=wobj_Press;
                MoveJ PD_N800_Place,v60,fine,gripper\WObj:=wobj_Press;
                Release;
                MoveJ PD_N800_Place,v600,fine,gripper\WObj:=wobj_Press;
            ENDIF
            MoveJ PD_800_Dep10,v600,fine,gripper\WObj:=wobj_Press;
        ENDIF
    ENDPROC


    PROC Press_Pickup()

        IF partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18
        THEN

            MoveJ PP_400_Pick,v400,fine,gripper\WObj:=wobj_Press;
            Grip;
            MoveL PP_400_Dep10,v30,fine,gripper\WObj:=wobj_Press;
            MoveJ PP_400_Dep20,v400,fine,gripper\WObj:=wobj_Press;

            !Check if a part is present after press pickup to make sure the grippers were able to lift the part out of the machine correctly
            IsPartPresent 2;

            !Check if part family is active for Bushings 
            IF failedBushingFamilies{1}=FALSE
            THEN
                !Check if part was correctly pressed
                Bushing_Press_Check;
            ENDIF

        ELSEIF partNumber=20 OR partNumber=13 OR partNumber=14 OR partNumber=21
        THEN

            MoveJ PP_600_Pick,v400,fine,gripper\WObj:=wobj_Press;
            Grip;
            MoveL PP_600_Dep10,v60,fine,gripper\WObj:=wobj_Press;
            MoveJ PP_600_Dep20,v600,z10,gripper\WObj:=wobj_Press;

            !Check if a part is present after press pickup to make sure the grippers were able to lift the part out of the machine correctly
            IsPartPresent 2;

            !Check if part family is active for Bushings 
            IF failedBushingFamilies{2}=FALSE
            THEN
                !Check if part was correctly pressed
                Bushing_Press_Check;
            ENDIF

        ELSEIF partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24
        THEN
            MoveJ PP_800_Pick,v400,fine,gripper\WObj:=wobj_Press;
            Grip;
            MoveL PP_800_Dep10,v60,fine,gripper\WObj:=wobj_Press;
            MoveJ PP_800_Dep20,v600,z10,gripper\WObj:=wobj_Press;

            !Check if a part is present after press pickup to make sure the grippers were able to lift the part out of the machine correctly
            IsPartPresent 2;

            !Check if part family is active for Bushings 
            IF failedBushingFamilies{3}=FALSE
            THEN
                !Check if part was correctly pressed
                Bushing_Press_Check;
            ENDIF
        ENDIF
    ENDPROC

    PROC PressPart()

        !Make sure that the press has air pressure
        IF airPressure=FALSE
		THEN
            UpdateTP("ERROR: Could not press part, no air pressure detected");
            UpdateTP("Robot hard stopped in current position, check all fixtures");
            PrintTP;
            !Do not run robot cooldown because press fixtures might move with robot grabbing part
            stacklights.blinkColorStatus.Red:=TRUE;
            !Ping for the operator
            PulseDO\PLength:=3,Audible;
            Stop;
            EXIT;
        ELSE
            IF partNumber=11 OR partNumber=12 OR partNumber=13 OR partNumber=14 OR partNumber=15 OR partNumber=16
            OR partNumber=17 OR partNumber=18 OR partNumber=20 OR partNumber=21 OR partNumber=23 OR partNumber=24
            THEN
                !Setting Press Pressure
                IF partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18
                THEN
                    !Setting Press Pressure
                    SetDO SolB_4,1;
                    SetDO SolB_8,1;
                    SetDO SolB_1,0;
                    SetDO SolB_2,1;
                ELSEIF partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21
                THEN
                    !Setting Press Pressure
                    SetDO SolB_4,1;
                    SetDO SolB_8,1;
                    SetDO SolB_1,0;
                    SetDO SolB_2,1;
                ELSEIF partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24
                THEN
                    !Setting Press Pressure
                    SetDO SolB_4,1;
                    SetDO SolB_8,1;
                    SetDO SolB_1,0;
                    SetDO SolB_2,1;
                ENDIF


                !Check if a part is present right before Dropoff is called so that the fixture is not pressed without a bushing
                IsPartPresent 1;
                Press_Dropoff;

                !Before pressing the part wait for a response from the cognex camera. 
                !If the program loops for more than 5 seconds without a response from the camera something is wrong and consider it a failed vision check
                CognexSnapp_TakePicture;
                FOR i FROM 1 TO 50 DO
                    IF snapStatus=1
                    THEN
                        !The part is good so continue on
                        !Pressing the part
                        WaitTime 0.5;
                        SetDO Press,0.5;
                        WaitTime 1.75;
                        SetDO Press,0;
                        WaitTime 0.2;

                        retryPress:=FALSE;
                        retryPressCountInRow:=0;

                        GOTO AFTER_VISION_CHECK;
                    ELSEIF snapStatus=2 OR snapStatus=3
                    THEN
                        !The part was bad or unclassified so fail the size on the press   
                        retryPress:=TRUE;
                        
                        !We need ot make sure this does not happen more than 3 times in a row
                        retryPressCountInRow:=retryPressCountInRow+1;
                        
                        IF retryPressCountInRow>=3
                        THEN
                            !We need to fail the current part size so set the retry press variable to false and let it fail out on it's own
                            retryPress:=FALSE;
                        ENDIF
                        IF lastPlacedBelt=1
                        THEN
                            con1YIndex:=con1YIndex+1;
                            IF con1YIndex>=5
                            THEN
                                con1YIndex:=4;
                            ENDIF
                        ELSEIF lastPlacedBelt=2
                        THEN
                            con2YIndex:=con2YIndex+1;
                            IF con2YIndex>=5
                            THEN
                                con2YIndex:=4;
                            ENDIF
                        ENDIF
                        GOTO AFTER_VISION_CHECK;
                    ENDIF

                    WaitTime .1;
                ENDFOR

                AFTER_VISION_CHECK:
                snapStatus:=0;

                !Pick up the part off of the press
                Press_Pickup;
            ENDIF
        ENDIF
    ENDPROC

    PROC Set_Actuator(num actNum)
        IF actNum=1
        THEN
            !Put Actuator 1 out on bushing press fixture
            SetDO Act_2,0;
            SetDO Act_3,0;

            WaitTime .5;
            SetDO Act_1,1;
        ELSEIF actNum=2
        THEN
            !Put Actuator 2 out on bushing press fixture
            SetDO Act_1,0;
            SetDO Act_3,0;

            WaitTime .5;
            SetDO Act_2,1;
        ELSEIF actNum=3
        THEN
            !Put Actuator 3 out on bushing press fixture
            SetDO Act_1,0;
            SetDO Act_2,0;

            WaitTime .5;
            SetDO Act_3,1;
        ELSE
            !Invalid, close all actuators
            SetDO Act_1,0;
            SetDO Act_2,0;
            SetDO Act_3,0;
        ENDIF
    ENDPROC

    PROC CognexSnapp_TakePicture()
        snapStatus:=0;
        WaitTime 1;
        IF CognexSnapp_Activate=1
        THEN
            SetDO CognexSnapp_Activate,0;
            WaitTime .5;
        ENDIF
        SetDO CognexSnapp_Activate,1;
        WaitTime .1;
        SetDO CognexSnapp_Activate,0;
    ENDPROC

ENDMODULE