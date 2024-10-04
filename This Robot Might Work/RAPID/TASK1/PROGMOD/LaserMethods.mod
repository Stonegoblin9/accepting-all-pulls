MODULE LaserMethods

    !LASER DROPOFF 1 (LD1)
    CONST robtarget LD1_Home:=[[0.29,283.78,-301.54],[0.497846,0.495058,0.505217,0.501819],[-1,0,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget LD1_400_10:=[[180.17,288.01,-152.92],[0.497729,0.495108,0.505509,0.501592],[-1,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD1_400_20:=[[181.16,286.91,-110.68],[0.499242,0.496827,0.503861,0.500044],[-1,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD1_400_20Standard:=[[182.33,286.82,-110.83],[0.499242,0.496854,0.503948,0.499929],[-1,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD1_400_20N:=[[181.92,287.86,-110.62],[0.499332,0.496776,0.503839,0.500028],[-1,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD1_400_209N:=[[181.80,288.90,-110.68],[0.4993,0.496791,0.503865,0.500018],[-1,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD1_400_209F:=[[181.38,286.22,-110.64],[0.499243,0.496824,0.503839,0.500069],[-1,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD1_400_30:=[[170.79,278.67,-111.29],[0.497555,0.49526,0.505419,0.501704],[-1,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD1_400_40:=[[91.62,247.99,-115.21],[0.497619,0.495208,0.505483,0.501629],[0,2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD1_400_50:=[[-80.90,285.55,-107.65],[0.49784,0.495033,0.505486,0.501579],[-1,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget LD1_600_10:=[[179.85,288.08,-170.10],[0.496619,0.496758,0.501174,0.505396],[-1,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD1_600_20:=[[180.13,288.40,-112.57],[0.496759,0.49665,0.501342,0.505198],[-1,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD1_600_209N:=[[180.23,288.60,-112.56],[0.496715,0.496683,0.501281,0.505269],[-1,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD1_600_30:=[[168.20,277.63,-113.40],[0.496547,0.496819,0.501085,0.505497],[-1,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD1_600_40:=[[136.52,255.78,-113.30],[0.496613,0.496763,0.501109,0.505461],[-1,2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget LD1_800_10:=[[179.85,288.08,-170.10],[0.496618,0.496759,0.501174,0.505396],[-1,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD1_800_20:=[[181.25,287.66,-116.11],[0.497326,0.496147,0.502146,0.504337],[-1,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD1_800_20F:=[[180.43,288.47,-115.52],[0.496962,0.496438,0.501558,0.504992],[-1,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD1_800_30:=[[142.70,260.65,-116.47],[0.496852,0.496571,0.50143,0.505097],[-1,2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD1_800_40:=[[56.64,237.62,-116.46],[0.496865,0.496569,0.501442,0.505075],[0,2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD1_800_50:=[[-23.35,286.18,-113.40],[0.496954,0.49649,0.501478,0.505029],[-1,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !LASER DROPOFF 2 (LD2)
    CONST robtarget LD2_Home:=[[-17.92,242.55,-215.49],[0.499738,-0.510374,0.495099,-0.494628],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget LD2_400_10:=[[179.66,286.73,-171.32],[0.50264,-0.507421,0.498144,-0.49166],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD2_400_20:=[[181.52,285.14,-110.76],[0.502461,-0.506678,0.499066,-0.491673],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD2_400_20B:=[[181.52,289.29,-110.80],[0.499301,-0.503929,0.501753,-0.494973],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD2_400_20Standard:=[[182.51,284.95,-111.13],[0.494941,-0.499618,0.506098,-0.499279],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD2_400_20N:=[[181.53,286.42,-110.79],[0.498221,-0.502926,0.502772,-0.496047],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD2_400_209N:=[[182.39,286.53,-109.97],[0.502585,-0.505152,0.500564,-0.491595],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD2_400_209F:=[[181.54,284.95,-110.81],[0.496286,-0.500897,0.504817,-0.497958],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD2_400_30:=[[174.60,278.99,-110.76],[0.502292,-0.506898,0.498736,-0.491955],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD2_400_40:=[[101.85,237.33,-110.68],[0.502271,-0.506913,0.498703,-0.491994],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD2_400_50:=[[-40.89,253.36,-108.66],[0.502641,-0.507414,0.49811,-0.4917],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget LD2_600_10:=[[179.31,285.33,-173.28],[0.502625,-0.507857,0.497795,-0.491578],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD2_600_20:=[[180.92,286.02,-113.24],[0.500301,-0.504074,0.507836,-0.487556],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD2_600_209N:=[[179.71,285.33,-113.47],[0.497223,-0.502333,0.503485,-0.496924],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD2_600_30:=[[180.56,285.36,-113.42],[0.497257,-0.502367,0.503394,-0.496948],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD2_600_40:=[[136.81,258.10,-113.32],[0.497193,-0.502409,0.503329,-0.497035],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD2_600_50:=[[-47.83,283.24,-110.01],[0.502608,-0.507845,0.497819,-0.491584],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget LD2_800_10:=[[179.29,286.20,-173.98],[0.496593,-0.501916,0.503784,-0.497672],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD2_800_20:=[[180.95,285.30,-116.81],[0.496608,-0.501918,0.503825,-0.497613],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD2_800_20F:=[[180.13,284.88,-116.76],[0.496531,-0.501929,0.503792,-0.497713],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD2_800_30:=[[173.83,281.19,-116.74],[0.496588,-0.501907,0.503813,-0.497656],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD2_800_40:=[[93.02,243.46,-116.69],[0.496621,-0.501905,0.503808,-0.497631],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LD2_800_50:=[[-23.20,284.33,-113.73],[0.496593,-0.501896,0.503825,-0.497651],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Bushing_Path:=[[-349.76,239.43,-210.48],[0.499717,-0.510371,0.495073,-0.494678],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !LASER PICKUP (LP)
    CONST robtarget LP_Home:=[[-17.92,242.55,-215.49],[0.499741,-0.510371,0.495102,-0.494626],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget LP_C400_10:=[[73.89,263.83,-110.37],[0.50259,-0.507433,0.498096,-0.491748],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LP_C400_20:=[[180.55,285.74,-112.02],[0.502664,-0.507409,0.498144,-0.491647],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LP_C400_30:=[[178.33,282.48,-115.59],[0.502851,-0.507496,0.497935,-0.491579],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget LP_C600_10:=[[40.58,246.97,-112.06],[0.502652,-0.507815,0.49784,-0.491549],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LP_C600_20:=[[180.19,286.31,-114.22],[0.502717,-0.50782,0.497843,-0.491473],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LP_C600_30:=[[180.19,286.31,-114.22],[0.502717,-0.507822,0.497844,-0.491472],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LP_C600_40:=[[180.19,286.31,-114.22],[0.502719,-0.507819,0.497844,-0.491471],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LP_C600_50:=[[47.74,243.63,-152.61],[0.50267,-0.507838,0.497832,-0.491515],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget LP_C800_10:=[[85.02,252.04,-115.33],[0.502588,-0.507887,0.497758,-0.491623],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LP_C800_20:=[[180.15,286.22,-116.79],[0.502617,-0.507866,0.497794,-0.491578],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LP_C800_30:=[[180.15,286.22,-116.78],[0.502616,-0.507866,0.497793,-0.49158],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LP_C800_50:=[[47.74,243.63,-152.61],[0.502669,-0.50784,0.497831,-0.491515],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !LASER PICKUP 2 (LP2)
    CONST robtarget LP2_Home:=[[-263.61,309.97,-108.02],[0.719734,-0.694189,0.00828354,-0.00397654],[0,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget LP2_400_10:=[[92.37,274.04,-116.77],[0.719752,-0.694171,0.00820946,-0.00396959],[0,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LP2_400_20:=[[148.28,311.46,-114.33],[0.719696,-0.694228,0.00828316,-0.00396987],[0,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LP2_400_30:=[[152.47,314.73,-111.27],[0.709956,-0.704169,0.0104455,0.000113344],[0,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LP2_400_40:=[[122.09,299.56,-159.21],[0.719605,-0.694322,0.00832484,-0.00405739],[0,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LP2_400_50:=[[-85.81,323.97,-147.06],[0.719651,-0.694274,0.00834266,-0.00402764],[0,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget LP2_600_20:=[[120.38,288.27,-113.12],[0.709236,-0.704964,0.00249114,0.00185601],[0,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LP2_600_30:=[[150.69,316.70,-113.59],[0.709255,-0.704945,0.00250341,0.00187931],[0,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LP2_600_40:=[[125.55,293.60,-127.58],[0.709324,-0.704875,0.00248887,0.00191699],[0,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget LP2_800_10:=[[146.29,282.76,-116.23],[0.719754,-0.694168,0.00834996,-0.00386644],[0,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LP2_800_20:=[[152.38,315.84,-116.57],[0.712103,-0.701997,0.0103126,-0.0017751],[0,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LP2_800_40:=[[153.41,318.32,-127.24],[0.712065,-0.702033,0.0105252,-0.00156324],[0,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LP2_800_50:=[[-55.91,272.12,-149.40],[0.712037,-0.702062,0.0104879,-0.00154669],[0,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !FUMEX VARIABLES
    PERS byte fumexGasOdor;
    PERS byte fumexHEPA;
    PERS byte fumexPower;
    PERS byte fumexPreFilter;

    !Making sure the robot marked correctly
    PERS bool markedPart;

    !MARK PROPERTIES
    VAR string mo1{1};
    VAR string yr1{1};
    VAR string mo2{1};
    VAR string yr2{1};
    VAR byte month1{1};
    VAR byte month2{1};
    VAR byte year1{1};
    VAR byte year2{1};
    VAR byte markHeight1;
    VAR byte markHeight2;
    VAR byte markHeight3;
    VAR byte markHeight4;
    VAR byte markHeight5;
    VAR byte markHeight6;

    PROC Laser_Dropoff1()
        IF partNumber=1 OR partNumber=2 OR partNumber=3 OR partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18 OR partNumber=19 OR partNumber=26 OR partNumber=27
        THEN
            MoveJ LD1_Home,v800,z10,gripper\WObj:=wobj_Laser;
            MoveJ LD1_400_10,v600,z0,gripper\WObj:=wobj_Laser;
            !The 400 N part numbers were off so added in a new point to adjust for them specifically
            IF partNumber=11
            THEN
                MoveJ LD1_400_20N,v600,fine,gripper\WObj:=wobj_Laser;
            ELSEIF partNumber=12
            THEN
                MoveJ LD1_400_209N,v600,fine,gripper\WObj:=wobj_Laser;
            ELSEIF partNumber=18
            THEN
                MoveJ LD1_400_209F,v600,fine,gripper\WObj:=wobj_Laser;
            ELSEIF partNumber=1 OR partNumber=3
            THEN
                MoveJ LD1_400_20Standard,v600,fine,gripper\WObj:=wobj_Laser;
            ELSE
                MoveJ LD1_400_20,v600,fine,gripper\WObj:=wobj_Laser;
            ENDIF
            Release;
            MoveJ LD1_400_30,v600,fine,gripper\WObj:=wobj_Laser;
            MoveJ LD1_400_40,v600,z0,gripper\WObj:=wobj_Laser;
            MoveJ LD1_400_50,v600,z0,gripper\WObj:=wobj_Laser;
            MoveJ LP2_Home,v600,fine,gripper\WObj:=wobj_Laser;
        ELSEIF partNumber=4 OR partNumber=5 OR partNumber=6 OR partNumber=10 OR partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21 OR partNumber=22
        THEN
            MoveJ LD1_Home,v1000,z10,gripper\WObj:=wobj_Laser;
            MoveJ LD1_600_10,v800,z0,gripper\WObj:=wobj_Laser;
            IF partNumber=14
            THEN
                MoveJ LD1_600_209N,v600,fine,gripper\WObj:=wobj_Laser;
            ELSE
                MoveJ LD1_600_20,v600,fine,gripper\WObj:=wobj_Laser;
            ENDIF
            Release;
            MoveJ LD1_600_30,v800,fine,gripper\WObj:=wobj_Laser;
            MoveJ LD1_600_40,v800,z0,gripper\WObj:=wobj_Laser;
            MoveJ LP2_Home,v1000,z100,gripper\WObj:=wobj_Laser;
        ELSEIF partNumber=7 OR partNumber=8 OR partNumber=9 OR partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24 OR partNumber=25
        THEN
            MoveJ LD1_Home,v600,z10,gripper\WObj:=wobj_Laser;
            MoveJ LD1_800_10,v600,z0,gripper\WObj:=wobj_Laser;
            IF partNumber=23
            THEN
                MoveJ LD1_800_20F,v600,fine,gripper\WObj:=wobj_Laser;
            ELSE
                MoveJ LD1_800_20,v600,fine,gripper\WObj:=wobj_Laser;
            ENDIF
            Release;
            MoveJ LD1_800_30,v600,fine,gripper\WObj:=wobj_Laser;
            MoveJ LD1_800_40,v600,z0,gripper\WObj:=wobj_Laser;
            MoveJ LD1_800_50,v600,z0,gripper\WObj:=wobj_Laser;
            MoveJ LD2_Home,v600,fine,gripper\WObj:=wobj_Laser;
        ENDIF
    ENDPROC

    PROC Laser_Dropoff2()
        IF partNumber=1 OR partNumber=2 OR partNumber=3 OR partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18 OR partNumber=19 OR partNumber=26 OR partNumber=27
        THEN
            MoveJ LD2_Home,v800,z10,gripper\WObj:=wobj_Laser;
            MoveJ LD2_400_10,v600,z0,gripper\WObj:=wobj_Laser;
            !The 400 N part numbers were off so added in a new point to adjust for them specifically
            IF partNumber=11
            THEN
                MoveJ LD2_400_20N,v600,fine,gripper\WObj:=wobj_Laser;
            ELSEIF partNumber=12
            THEN
                MoveJ LD2_400_209N,v600,fine,gripper\WObj:=wobj_Laser;
            ELSEIF partNumber=18
            THEN
                MoveJ LD2_400_209F,v600,fine,gripper\WObj:=wobj_Laser;
            ELSEIF partNumber=1 OR partNumber=3
            THEN
                MoveJ LD2_400_20Standard,v600,fine,gripper\WObj:=wobj_Laser;
            ELSEIF partNumber=19
            THEN
                MoveJ LD2_400_20B,v600,fine,gripper\WObj:=wobj_Laser;
            ELSE
                MoveJ LD2_400_20,v600,fine,gripper\WObj:=wobj_Laser;
            ENDIF
            Release;
            MoveJ LD2_400_30,v600,fine,gripper\WObj:=wobj_Laser;
            MoveJ LD2_400_40,v600,z0,gripper\WObj:=wobj_Laser;
            MoveJ LD2_400_50,v600,z0,gripper\WObj:=wobj_Laser;
            MoveJ LD2_Home,v600,fine,gripper\WObj:=wobj_Laser;
        ELSEIF partNumber=4 OR partNumber=5 OR partNumber=6 OR partNumber=10 OR partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21 OR partNumber=22
        THEN
            PathAccLim TRUE\AccMax:=3,TRUE\DecelMax:=3;
            MoveJ LD2_Home,vmax,z50,gripper\WObj:=wobj_Laser;
            MoveJ LD2_600_10,vmax,z10,gripper\WObj:=wobj_Laser;
            PathAccLim FALSE,FALSE;
            IF partNumber=14
            THEN
                MoveJ LD2_600_209N,v800,fine,gripper\WObj:=wobj_Laser;
            ELSE
                MoveJ LD2_600_20,v800,fine,gripper\WObj:=wobj_Laser;
            ENDIF
            Release;
            PathAccLim TRUE\AccMax:=3,TRUE\DecelMax:=3;
            MoveJ LD2_600_30,vmax,z10,gripper\WObj:=wobj_Laser;
            MoveJ LD2_600_40,vmax,z50,gripper\WObj:=wobj_Laser;
            MoveJ LD2_600_50,vmax,z100,gripper\WObj:=wobj_Laser;
            MoveJ LP2_Home,vmax,z100,gripper\WObj:=wobj_Laser;
            PathAccLim FALSE,FALSE;
        ELSEIF partNumber=7 OR partNumber=8 OR partNumber=9 OR partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24 OR partNumber=25
        THEN
            MoveJ LD2_Home,v600,z10,gripper\WObj:=wobj_Laser;
            MoveJ LD2_800_10,v600,z0,gripper\WObj:=wobj_Laser;
            IF partNumber=23
            THEN
                MoveJ LD2_800_20F,v600,fine,gripper\WObj:=wobj_Laser;
            ELSE
                MoveJ LD2_800_20,v600,fine,gripper\WObj:=wobj_Laser;
            ENDIF
            Release;
            MoveJ LD2_800_30,v600,fine,gripper\WObj:=wobj_Laser;
            MoveJ LD2_800_40,v600,z0,gripper\WObj:=wobj_Laser;
            MoveJ LD2_800_50,v600,z0,gripper\WObj:=wobj_Laser;
            MoveJ LD2_Home,v600,fine,gripper\WObj:=wobj_Laser;
        ENDIF
    ENDPROC

    PROC Laser_Pickup()

        IF partNumber=1 OR partNumber=2 OR partNumber=3 OR partNumber=26 OR partNumber=27 OR partNumber=19
        THEN
            MoveJ LP_Home,v600,fine,gripper\WObj:=wobj_Laser;
            MoveJ LP_C400_10,v600,z0,gripper\WObj:=wobj_Laser;
            MoveJ LP_C400_20,v600,fine,gripper\WObj:=wobj_Laser;
            Grip;
            MoveJ LP_C400_30,v600,fine,gripper\WObj:=wobj_Laser;
            MoveJ LP_Home,v600,fine,gripper\WObj:=wobj_Laser;
        ELSEIF partNumber=4 OR partNumber=5 OR partNumber=6 OR partNumber=10 OR partNumber=22
        THEN
            MoveJ LP_Home,v600,fine,gripper\WObj:=wobj_Laser;
            MoveJ LP_C600_10,v600,z0,gripper\WObj:=wobj_Laser;
            MoveJ LP_C600_20,v600,fine,gripper\WObj:=wobj_Laser;
            Grip;
            MoveJ LP_C600_30,v600,fine,gripper\WObj:=wobj_Laser;
            MoveJ LP_C600_40,v600,fine,gripper\WObj:=wobj_Laser;
            MoveJ LP_C600_50,v600,z0,gripper\WObj:=wobj_Laser;
            MoveJ LP_Home,v1000,fine,gripper\WObj:=wobj_Laser;
        ELSEIF partNumber=7 OR partNumber=8 OR partNumber=9 OR partNumber=25
        THEN
            MoveJ LP_Home,v600,fine,gripper\WObj:=wobj_Laser;
            MoveJ LP_C800_10,v600,fine,gripper\WObj:=wobj_Laser;
            MoveJ LP_C800_20,v600,fine,gripper\WObj:=wobj_Laser;
            Grip;
            MoveJ LP_C800_30,v600,fine,gripper\WObj:=wobj_Laser;
            MoveJ LP_C800_50,v600,z0,gripper\WObj:=wobj_Laser;
            MoveJ LP_Home,v600,fine,gripper\WObj:=wobj_Laser;

        ELSEIF partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18
        THEN
            MoveJ LP2_Home,v600,fine,gripper\WObj:=wobj_Laser;
            MoveJ LP2_400_10,v600,z0,gripper\WObj:=wobj_Laser;
            MoveL LP2_400_20,v600,z0,gripper\WObj:=wobj_Laser;
            MoveL LP2_400_30,v600,fine,gripper\WObj:=wobj_Laser;
            Grip;
            MoveL LP2_400_30,v600,fine,gripper\WObj:=wobj_Laser;
            MoveL LP2_400_40,v600,fine,gripper\WObj:=wobj_Laser;
            MoveJ LP2_400_50,v600,z0,gripper\WObj:=wobj_Laser;
            MoveJ LP2_Home,v600,fine,gripper\WObj:=wobj_Laser;

        ELSEIF partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21
        THEN
            MoveJ LP2_Home,v1000,z50,gripper\WObj:=wobj_Laser;
            MoveJ LP2_600_20,v1000,z0,gripper\WObj:=wobj_Laser;
            MoveL LP2_600_30,v600,fine,gripper\WObj:=wobj_Laser;
            Grip;
            MoveL LP2_600_30,v600,fine,gripper\WObj:=wobj_Laser;
            MoveL LP2_600_40,v800,fine,gripper\WObj:=wobj_Laser;
            MoveJ LP2_Home,v1000,fine,gripper\WObj:=wobj_Laser;
        ELSEIF partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24
        THEN
            MoveJ LP2_Home,v600,fine,gripper\WObj:=wobj_Laser;
            MoveJ LP2_800_10,v600,z0,gripper\WObj:=wobj_Laser;
            MoveL LP2_800_20,v600,fine,gripper\WObj:=wobj_Laser;
            Grip;
            MoveL LP2_800_40,v600,fine,gripper\WObj:=wobj_Laser;
            MoveJ LP2_800_50,v600,z0,gripper\WObj:=wobj_Laser;
            MoveJ LP2_Home,v600,fine,gripper\WObj:=wobj_Laser;

        ENDIF
    ENDPROC

    PROC Laser_Mark()
        !Make sure the robot actually marked the last part
        
        IF markedPart
        THEN
            !Reset it so that we know we read the good value
            markedPart:=FALSE;
            partNotMarkedCounter:=0;
        ELSEIF markedPart=FALSE AND partNotMarkedCounter<3
        THEN
            partNotMarkedCounter:=partNotMarkedCounter+1;
        ELSEIF markedPart=FALSE AND partNotMarkedCounter>=3
        THEN
            !If it has happened less than 3 times in a row we can continue like normal
            UpdateTP("Can Not Confirm Laser Marking, Reset Cell");
            PrintTP;
            PulseDO\PLength:=3,Audible;
            stacklights.blinkColorStatus.Green:=FALSE;
            stacklights.solidColorStatus.Green:=FALSE;
            stacklights.blinkColorStatus.Orange:=TRUE;
            Stop;
            EXIT;
        ENDIF

        !If it makes it in here then we incriment the part count
        filterMaintCounter:=filterMaintCounter+1;

        !Check if the fumex is sucking air or not
        IF filterVelocity=FALSE
		THEN
            !Stop the robot because it cannot mark parts without the filter on
            UpdateTP("ERROR: Fumex filter is not online");
            UpdateTP("Robot will attempt to reset cell before shutting down");
            PrintTP;
            !Robot has no part currently. Pickup the part in the laser now and drop at conveyor
            Laser_Pickup;

            !IF there was no body in the laser, there will be no body in the grippers
            !IF the part needs a bushing the first part will not have a bushing in the press yet so skip that
            IF Gripper_PartPresent=1
			THEN
                !Check if this part is allowed to have a bushing
                FOR i FROM 1 TO Dim(bushingEnabled,1) DO
                    IF bushingEnabled{i}=partNumber
                    THEN
                        PressPart;
                    ENDIF
                ENDFOR
                Conveyor;
            ENDIF
            RotateDoor;
            Laser_Pickup;
            Conveyor;
            Close_All_Drawers(0);
            MoveJ LD2_Home,v400,fine,gripper\WObj:=wobj_Laser;
            Robot_Cooldown;
            stacklights.blinkColorStatus.Orange:=TRUE;
            !Call the operator
            PulseDO\PLength:=3,Audible;
            Stop;
            EXIT;
        ELSE
            IF filterMaintCounter>=filterResetCount
                THEN
                stacklights.blinkColorStatus.White:=TRUE;
                stacklights.blinkColorStatus.Blue:=TRUE;
                UpdateTP("ERROR: Fumex Dust Bag must be changed");
                PrintTP;
                !Call the operator
                PulseDO\PLength:=3,Audible;
                Stop;
                EXIT;
            ELSE
                IF Laser_DI_LaserFault=1
                THEN
                    SetDO Stack_Light_O,1;
                    !IF it is the door open print that out
                    IF Laser_DI_SwitchTriggered=0
                    THEN
                        UpdateTP("Laser Doors switches are triggered. Close doors to continue");
                        PrintTP;
                    ELSE
                        UpdateTP("Laser Fault has occured, check status screen on laser computer");
                        PrintTP;
                    ENDIF
                ENDIF
                IF Laser_DI_LaserFault=0
                THEN
                    SetDO Stack_Light_O,0;
                ENDIF
                WaitDI Laser_DI_LaserFault,0;

                LoadVLF;
                SetVariable;
                MoveAxis;
                RotateDoor;
                StartMark;
            ENDIF
        ENDIF
    ENDPROC

    PROC StartMark()
        !START MARK
        !If there is a laser error, Orange light will turn on and robot will wait for error to be cleared
        IF Laser_DI_LaserFault=1
            THEN
            SetDO Stack_Light_O,1;
            WaitDI Laser_DI_LaserFault,0;
        ENDIF
        SetGO Laser_GO_Command,20204;
        !Start Laser Mark
        IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
            THEN
            SetGO Laser_GO_Handshake,2;
        ELSE
            SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
        ENDIF
    ENDPROC


    PROC MoveAxis()
        !MOVE Z-AXIS FOR PART HEIGHT

        WaitUntil partNumber>0;
        IF partNumber=1 OR partNumber=2 OR partNumber=3 OR partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18 OR partNumber=19 OR partNumber=26 OR partNumber=27
            THEN
            markHeight1:=49;
            !1
            markHeight2:=49;
            !1
            markHeight3:=49;
            !1
            markHeight4:=46;
            !.
            markHeight5:=53;
            !5
            markHeight6:=48;
            !0
        ELSEIF partNumber=4 OR partNumber=5 OR partNumber=6 OR partNumber=10 OR partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21 OR partNumber=22
            THEN
            markHeight1:=49;
            !1
            markHeight2:=49;
            !1
            markHeight3:=53;
            !5
            markHeight4:=46;
            !.
            markHeight5:=56;
            !8
            markHeight6:=53;
            !5
        ELSEIF partNumber=7 OR partNumber=8 OR partNumber=9 OR partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24 OR partNumber=25
            THEN
            markHeight1:=49;
            !1
            markHeight2:=50;
            !2
            markHeight3:=49;
            !1
            markHeight4:=46;
            !.
            markHeight5:=55;
            !7
            markHeight6:=56;
            !8
            !error handling
        ENDIF
        SetGO Laser_GO_Command,20103;
        !Move Axis
        SetGO Laser_GO_Length,11;
        !Length is 11 characters (1) + null + (106.18) + null + (1) + null
        SetGO Laser_GO_Value1,49;
        !1 (Z-axis)
        SetGO Laser_GO_Value2,0;
        !null
        SetGO Laser_GO_Value3,markHeight1;
        SetGO Laser_GO_Value4,markHeight2;
        SetGO Laser_GO_Value5,markHeight3;
        SetGO Laser_GO_Value6,markHeight4;
        SetGO Laser_GO_Value7,markHeight5;
        SetGO Laser_GO_Value8,markHeight6;
        SetGO Laser_GO_Value9,0;
        !null
        SetGO Laser_GO_Value10,49;
        !1 (Wait until end)
        SetGO Laser_GO_Value11,0;
        !null
        IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
            THEN
            SetGO Laser_GO_Handshake,2;
        ELSE
            SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
        ENDIF
        WaitGI Laser_GI_Response,20103;
        WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
        !Wait for handshake response to match what was sent

    ENDPROC

    PROC date()
        mo1{1}:=StrPart(CDate(),6,1);
        !First Value of Month (ex. 07 would be "0")
        mo2{1}:=StrPart(CDate(),7,1);
        !Second Value of Month (ex. 07 would be "7")
        yr1{1}:=StrPart(CDate(),3,1);
        !First Value of Year (ex.'21 would be "2")
        yr2{1}:=StrPart(CDate(),4,1);
        !Second Value of Year (ex.'21 would be "1")
        !"Char" designates that the string being converted to DECIMAL is currently formatted in ASCII
        month1{1}:=StrToByte(mo1{1}\Char);
        !Change value of first month code to byte and assign to new variable
        month2{1}:=StrToByte(mo2{1}\Char);
        !Change value of second month code to byte and assign to new variable
        year1{1}:=StrToByte(yr1{1}\Char);
        !Change value of first year code to byte and assign to new variable
        year2{1}:=StrToByte(yr2{1}\Char);
        !Change value of second year code to byte and assign to new variable
    ENDPROC

    PROC SetVariable()
        !SET CAD VARIABLE FOR DATE CODE
        SetGO Laser_GO_Command,20421;
        !Set Variable
        SetGO Laser_GO_Length,8;
        !Length is 8 characters (Date) + null + (FG) +null
        date;
        IF month1{1}=48 AND month2{1}=49
            THEN
            SetGO Laser_GO_Value6,65;
        ELSEIF month1{1}=48 AND month2{1}=50
            THEN
            SetGO Laser_GO_Value6,66;
        ELSEIF month1{1}=48 AND month2{1}=51
            THEN
            SetGO Laser_GO_Value6,67;
        ELSEIF month1{1}=48 AND month2{1}=52
            THEN
            SetGO Laser_GO_Value6,68;
        ELSEIF month1{1}=48 AND month2{1}=53
            THEN
            SetGO Laser_GO_Value6,69;
        ELSEIF month1{1}=48 AND month2{1}=54
            THEN
            SetGO Laser_GO_Value6,70;
        ELSEIF month1{1}=48 AND month2{1}=55
            THEN
            SetGO Laser_GO_Value6,71;
        ELSEIF month1{1}=48 AND month2{1}=56
            THEN
            SetGO Laser_GO_Value6,72;
        ELSEIF month1{1}=48 AND month2{1}=57
            THEN
            SetGO Laser_GO_Value6,74;
        ELSEIF month1{1}=49 AND month2{1}=48
            THEN
            SetGO Laser_GO_Value6,75;
        ELSEIF month1{1}=49 AND month2{1}=49
            THEN
            SetGO Laser_GO_Value6,76;
        ELSEIF month1{1}=49 AND month2{1}=50
            THEN
            SetGO Laser_GO_Value6,77;
        ELSE
            !ADD AN ERROR HERE
            stacklights.blinkColorStatus.Red:=TRUE;
            TPWrite("Error: Date Code Month");
            Stop;
        ENDIF
        IF year1{1}=50 AND year2{1}=49
            THEN
            SetGO Laser_GO_Value7,80;
        ELSEIF year1{1}=50 AND year2{1}=50
            THEN
            SetGO Laser_GO_Value7,82;
        ELSEIF year1{1}=50 AND year2{1}=51
            THEN
            SetGO Laser_GO_Value7,84;
        ELSEIF year1{1}=50 AND year2{1}=52
            THEN
            SetGO Laser_GO_Value7,85;
        ELSEIF year1{1}=50 AND year2{1}=53
            THEN
            SetGO Laser_GO_Value7,86;
        ELSEIF year1{1}=50 AND year2{1}=54
            THEN
            SetGO Laser_GO_Value7,87;
            ! If Year 1 value and Year 2 value(in DECIMAL) match a date code, the code is given (in DECIMAL)
            !Years 2021(50 49) to 2026 (50 54) are listed
            !To add more years, delete the exclaimations in the following lines and enter the correct year1{1}, year2{1}, and SETGO values in DECIMAL
            !ELSEIF year1{1}=XX AND year2{1} =XX
            !THEN SETGO Laser_GO_Value7, XX;
        ELSE
            stacklights.blinkColorStatus.Red:=TRUE;
            TPWrite("Error: Date Code Year");
            Stop;
        ENDIF
        SetGO Laser_GO_Value1,68;
        !D
        SetGO Laser_GO_Value2,97;
        !a
        SetGO Laser_GO_Value3,116;
        !t
        SetGO Laser_GO_Value4,101;
        !e
        SetGO Laser_GO_Value5,0;
        !null
        !See above for Laser_GO_Value6
        !See above for Laser_GO_Value7
        SetGO Laser_GO_Value8,0;
        !null
        IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
            THEN
            SetGO Laser_GO_Handshake,2;
        ELSE
            SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
        ENDIF
        WaitGI Laser_GI_Response,20421;
        WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
        !Wait for handshake response to match what was sent
    ENDPROC

    PROC LoadVLF()
        !Check for XB numbers enabled
        IF xNumberEnabled=0
        THEN
            IF partNumber=1
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,6;
                !Length is 5 characters (C400S) + null
                SetGO Laser_GO_Value1,67;
                !C
                SetGO Laser_GO_Value2,52;
                !4
                SetGO Laser_GO_Value3,48;
                !0
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,83;
                !S
                SetGO Laser_GO_Value6,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=2
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,7;
                !Length is 6 characters (9C400S) + null
                SetGO Laser_GO_Value1,57;
                !9
                SetGO Laser_GO_Value2,67;
                !C
                SetGO Laser_GO_Value3,52;
                !4
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,48;
                !0
                SetGO Laser_GO_Value6,83;
                !S
                SetGO Laser_GO_Value7,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=3
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,6;
                !Length is 5 characters (C400B) + null
                SetGO Laser_GO_Value1,67;
                !C
                SetGO Laser_GO_Value2,52;
                !4
                SetGO Laser_GO_Value3,48;
                !0
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,66;
                !B
                SetGO Laser_GO_Value6,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=4
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,6;
                !Length is 5 characters (C600S) + null
                SetGO Laser_GO_Value1,67;
                !C
                SetGO Laser_GO_Value2,54;
                !6
                SetGO Laser_GO_Value3,48;
                !0
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,83;
                !S
                SetGO Laser_GO_Value6,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=5
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,7;
                !Length is 6 characters (9C600S) + null
                SetGO Laser_GO_Value1,57;
                !9
                SetGO Laser_GO_Value2,67;
                !C
                SetGO Laser_GO_Value3,54;
                !6
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,48;
                !0
                SetGO Laser_GO_Value6,83;
                !S
                SetGO Laser_GO_Value7,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=6
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,6;
                !Length is 5 characters (C600B) + null
                SetGO Laser_GO_Value1,67;
                !C
                SetGO Laser_GO_Value2,54;
                !6
                SetGO Laser_GO_Value3,48;
                !0
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,66;
                !B
                SetGO Laser_GO_Value6,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=7
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,6;
                !Length is 5 characters (C800S) + null
                SetGO Laser_GO_Value1,67;
                !C
                SetGO Laser_GO_Value2,56;
                !8
                SetGO Laser_GO_Value3,48;
                !0
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,83;
                !S
                SetGO Laser_GO_Value6,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=8
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,7;
                !Length is 6 characters (9C800S) + null
                SetGO Laser_GO_Value1,57;
                !9
                SetGO Laser_GO_Value2,67;
                !C
                SetGO Laser_GO_Value3,56;
                !8
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,48;
                !0
                SetGO Laser_GO_Value6,83;
                !S
                SetGO Laser_GO_Value7,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=9
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,6;
                !Length is 5 characters (C800B) + null
                SetGO Laser_GO_Value1,67;
                !C
                SetGO Laser_GO_Value2,56;
                !8
                SetGO Laser_GO_Value3,48;
                !0
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,66;
                !B
                SetGO Laser_GO_Value6,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=10
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,6;
                !Length is 5 characters (N600B) + null
                SetGO Laser_GO_Value1,78;
                !N
                SetGO Laser_GO_Value2,54;
                !6
                SetGO Laser_GO_Value3,48;
                !0
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,66;
                !B
                SetGO Laser_GO_Value6,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=11
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,6;
                !Length is 5 characters (N400S) + null
                SetGO Laser_GO_Value1,78;
                !N
                SetGO Laser_GO_Value2,52;
                !4
                SetGO Laser_GO_Value3,48;
                !0
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,83;
                !S
                SetGO Laser_GO_Value6,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=12
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,7;
                !Length is 6 characters (9N400S) + null
                SetGO Laser_GO_Value1,57;
                !9
                SetGO Laser_GO_Value2,78;
                !N
                SetGO Laser_GO_Value3,52;
                !4
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,48;
                !0
                SetGO Laser_GO_Value6,83;
                !S
                SetGO Laser_GO_Value7,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=13
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,6;
                !Length is 5 characters (N600S) + null
                SetGO Laser_GO_Value1,78;
                !N
                SetGO Laser_GO_Value2,54;
                !6
                SetGO Laser_GO_Value3,48;
                !0
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,83;
                !S
                SetGO Laser_GO_Value6,0;
                !           null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=14
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,7;
                !Length is 6 characters (9N600S) + null
                SetGO Laser_GO_Value1,57;
                !9
                SetGO Laser_GO_Value2,78;
                !N
                SetGO Laser_GO_Value3,54;
                !6
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,48;
                !0
                SetGO Laser_GO_Value6,83;
                !S
                SetGO Laser_GO_Value7,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=15
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,6;
                !Length is 5 characters (N800S) + null
                SetGO Laser_GO_Value1,78;
                !N
                SetGO Laser_GO_Value2,56;
                !8
                SetGO Laser_GO_Value3,48;
                !0
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,83;
                !S
                SetGO Laser_GO_Value6,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=16
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,7;
                !Length is 6 characters (9N800S) + null
                SetGO Laser_GO_Value1,57;
                !9
                SetGO Laser_GO_Value2,78;
                !N
                SetGO Laser_GO_Value3,56;
                !8
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,48;
                !0
                SetGO Laser_GO_Value6,83;
                !S
                SetGO Laser_GO_Value7,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=17
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,6;
                !Length is 5 characters (F400S) + null
                SetGO Laser_GO_Value1,70;
                !F
                SetGO Laser_GO_Value2,52;
                !4
                SetGO Laser_GO_Value3,48;
                !0
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,83;
                !S
                SetGO Laser_GO_Value6,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=18
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,7;
                !Length is 6 characters (9F400S) + null
                SetGO Laser_GO_Value1,57;
                !9
                SetGO Laser_GO_Value2,70;
                !F
                SetGO Laser_GO_Value3,52;
                !4
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,48;
                !0
                SetGO Laser_GO_Value6,83;
                !S
                SetGO Laser_GO_Value7,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=19
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,6;
                !Length is 5 characters (F400B) + null
                SetGO Laser_GO_Value1,70;
                !F
                SetGO Laser_GO_Value2,52;
                !4
                SetGO Laser_GO_Value3,48;
                !0
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,66;
                !B
                SetGO Laser_GO_Value6,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=20
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,6;
                !Length is 5 characters (F600S) + null
                SetGO Laser_GO_Value1,70;
                !F
                SetGO Laser_GO_Value2,54;
                !6
                SetGO Laser_GO_Value3,48;
                !0
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,83;
                !S
                SetGO Laser_GO_Value6,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=21
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,7;
                !Length is 6 characters (9F600S) + null
                SetGO Laser_GO_Value1,57;
                !9
                SetGO Laser_GO_Value2,70;
                !F
                SetGO Laser_GO_Value3,54;
                !6
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,48;
                !0
                SetGO Laser_GO_Value6,83;
                !S
                SetGO Laser_GO_Value7,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=22
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,6;
                !Length is 5 characters (F600B) + null
                SetGO Laser_GO_Value1,70;
                !F
                SetGO Laser_GO_Value2,54;
                !6
                SetGO Laser_GO_Value3,48;
                !0
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,66;
                !B
                SetGO Laser_GO_Value6,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=23
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,6;
                !Length is 5 characters (F800S) + null
                SetGO Laser_GO_Value1,70;
                !F
                SetGO Laser_GO_Value2,56;
                !8
                SetGO Laser_GO_Value3,48;
                !0
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,83;
                !S
                SetGO Laser_GO_Value6,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=24
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,7;
                !Length is 6 characters (9F800S) + null
                SetGO Laser_GO_Value1,57;
                !9
                SetGO Laser_GO_Value2,70;
                !F
                SetGO Laser_GO_Value3,56;
                !8
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,48;
                !0
                SetGO Laser_GO_Value6,83;
                !S
                SetGO Laser_GO_Value7,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF partNumber=25
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,6;
                !Length is 5 characters (F800B) + null
                SetGO Laser_GO_Value1,70;
                !F
                SetGO Laser_GO_Value2,56;
                !8
                SetGO Laser_GO_Value3,48;
                !0
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,66;
                !B
                SetGO Laser_GO_Value6,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ENDIF
        ELSE
            !The XB numbers are called from here
            IF xNumberEnabled=1
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,13;
                !Length is 13 characters (C400B1XB1234) + null
                SetGO Laser_GO_Value1,67;
                !C
                SetGO Laser_GO_Value2,52;
                !4
                SetGO Laser_GO_Value3,48;
                !0
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,66;
                !B
                SetGO Laser_GO_Value6,49;
                !1
                SetGO Laser_GO_Value7,88;
                !X
                SetGO Laser_GO_Value8,66;
                !B
                SetGO Laser_GO_Value9,49;
                !1
                SetGO Laser_GO_Value10,50;
                !2
                SetGO Laser_GO_Value11,51;
                !3
                SetGO Laser_GO_Value12,52;
                !4
                SetGO Laser_GO_Value13,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF xNumberEnabled=2
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,15;
                !Length is 14 characters (C400B1-VXB1235) + null
                SetGO Laser_GO_Value1,67;
                !C
                SetGO Laser_GO_Value2,52;
                !4
                SetGO Laser_GO_Value3,48;
                !0
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,66;
                !B
                SetGO Laser_GO_Value6,49;
                !1
                SetGO Laser_GO_Value7,45;
                !-
                SetGO Laser_GO_Value8,86;
                !V
                SetGO Laser_GO_Value9,88;
                !X
                SetGO Laser_GO_Value10,66;
                !B
                SetGO Laser_GO_Value11,49;
                !1
                SetGO Laser_GO_Value12,50;
                !2
                SetGO Laser_GO_Value13,51;
                !3
                SetGO Laser_GO_Value14,53;
                !5
                SetGO Laser_GO_Value15,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF xNumberEnabled=3
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,15;
                !Length is 14 characters (C600B1-VXB1236) + null
                SetGO Laser_GO_Value1,67;
                !C
                SetGO Laser_GO_Value2,54;
                !6
                SetGO Laser_GO_Value3,48;
                !0
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,66;
                !B
                SetGO Laser_GO_Value6,49;
                !1
                SetGO Laser_GO_Value7,45;
                !-
                SetGO Laser_GO_Value8,86;
                !V
                SetGO Laser_GO_Value9,88;
                !X
                SetGO Laser_GO_Value10,66;
                !B
                SetGO Laser_GO_Value11,49;
                !1
                SetGO Laser_GO_Value12,50;
                !2
                SetGO Laser_GO_Value13,51;
                !3
                SetGO Laser_GO_Value14,54;
                !6
                SetGO Laser_GO_Value15,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ELSEIF xNumberEnabled=4
            THEN
                !LOAD VLF(CAD) FILE
                SetGO Laser_GO_Command,20401;
                !Load VLF
                SetGO Laser_GO_Length,12;
                !Length is 12 characters (9F400SXB032) + null
                SetGO Laser_GO_Value1,57;
                !9
                SetGO Laser_GO_Value2,70;
                !F
                SetGO Laser_GO_Value3,52;
                !4
                SetGO Laser_GO_Value4,48;
                !0
                SetGO Laser_GO_Value5,48;
                !0
                SetGO Laser_GO_Value6,83;
                !S
                SetGO Laser_GO_Value7,88;
                !X
                SetGO Laser_GO_Value8,66;
                !B
                SetGO Laser_GO_Value9,48;
                !0
                SetGO Laser_GO_Value10,51;
                !3
                SetGO Laser_GO_Value11,50;
                !2
                SetGO Laser_GO_Value15,0;
                !null
                IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
                THEN
                    SetGO Laser_GO_Handshake,2;
                ELSE
                    SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
                ENDIF
                WaitGI Laser_GI_Response,20401;
                WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
                !Wait for handshake response to match what was sent
            ENDIF
        ENDIF
    ENDPROC

    PROC RotateDoor()

        !rotate DOOR
        SetGO Laser_GO_Command,20123;
        !rotate C Axis
        SetGO Laser_GO_Length,4;
        !Length is 3 characters (0) + null + (2) + null
        SetGO Laser_GO_Value1,48;
        !0 (Next position)
        SetGO Laser_GO_Value2,0;
        !null
        SetGO Laser_GO_Value3,49;
        !1 (Wait until end)
        SetGO Laser_GO_Value4,0;
        IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
            THEN
            SetGO Laser_GO_Handshake,2;
        ELSE
            SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
        ENDIF
        WaitGI Laser_GI_Response,20123;
        WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
        !Wait for handshake response to match what was sent
    ENDPROC

    PROC checkPartInLaser()
        partNumber:=7;
        currentPosition:=CPos(\Tool:=gripper\WObj:=wobj0);

        !Check if part is present in laser
        Release;
        IF LaserPartPresent=1
        THEN
            RotateDoor;

            UpdateTP("ERROR: Part Present in Laser");
            PrintTP;

            !Check to make sure the robot is actually at it's home location
            IF Distance(currentPosition,homePositionChute)>15 AND Distance(currentPosition,laserHomePosition)>10
            THEN
                MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            ENDIF

            MoveJ LP_Home,v600,z10,gripper\WObj:=wobj_Laser;

            !Using this as the part number since it is the biggest part
            Laser_Pickup;

            !Discard the part in the chute so it does not make it into production (It might have incorrect or incomplete marking)
            MoveJ VS_Home,v600,z10,gripper\WObj:=wobj_Vision;
            MoveJ VS_Failure10,v600,z10,gripper\Wobj:=wobj_Vision;
            MoveJ VS_Failure20,v600,fine,gripper\Wobj:=wobj_Vision;
            Release;
            MoveJ VS_Failure30,v600,fine,gripper\Wobj:=wobj_Vision;

            !Moving back to Laser Home Position
            MoveJ LP_Home,v600,z10,gripper\WObj:=wobj_Laser;

            !Check to see if there is still a part present in the laser
            IF LaserPartPresent=1
            THEN
                RotateDoor;

                Laser_Pickup;

                MoveJ VS_Home,v600,z10,gripper\WObj:=wobj_Vision;
                MoveJ VS_Failure10,v600,z10,gripper\Wobj:=wobj_Vision;
                MoveJ VS_Failure20,v600,fine,gripper\Wobj:=wobj_Vision;
                Release;
                MoveJ VS_Failure30,v600,fine,gripper\Wobj:=wobj_Vision;

                !Moving back to Laser Home Position
                MoveJ LP_Home,v600,z10,gripper\WObj:=wobj_Laser;

                IF LaserPartPresent=1
                THEN
                    !Stop the program because the sensor might be damaged or misaligned
                    UpdateTP("CRITICAL ERROR: Sensor shows part in laser even after it was cleared");
                    PrintTP;

                    stacklights.blinkColorStatus.Red:=TRUE;

                    !Play sound for operator
                    PulseDO\PLength:=3,Audible;
                    Stop;
                    EXIT;
                ENDIF
            ENDIF
        ELSE
            RotateDoor;
            WaitTime 2;
            IF LaserPartPresent=1
            THEN
                RotateDoor;
                UpdateTP("ERROR: Part Present in Laser");
                PrintTP;

                !Check to make sure the robot is actually at it's home location
                IF Distance(currentPosition,homePositionChute)>15 AND Distance(currentPosition,laserHomePosition)>10
                THEN
                    MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
                ENDIF

                MoveJ LP_Home,v600,z10,gripper\WObj:=wobj_Laser;

                Laser_Pickup;

                MoveJ VS_Home,v600,z10,gripper\WObj:=wobj_Vision;
                MoveJ VS_Failure10,v600,z10,gripper\Wobj:=wobj_Vision;
                MoveJ VS_Failure20,v600,fine,gripper\Wobj:=wobj_Vision;
                Release;
                MoveJ VS_Failure30,v600,fine,gripper\Wobj:=wobj_Vision;

                !Moving back to Laser Home Position
                MoveJ LP_Home,v600,z10,gripper\WObj:=wobj_Laser;

            ENDIF
        ENDIF
        partNumber:=0;
    ENDPROC

    PROC Check_Fumex_Filter()
        IF Fumex_HEPA=1
        THEN
            SetDO Fumex_Filter_Bad,1;
            SetDO Fumex_Filter_Good,0;
            UpdateTP("Error: FUMEX FILTER (HEPA) needs replaced and reset");
            PrintTP;
        ELSEIF Fumex_PreFilter=1
        THEN
            SetDO Fumex_Filter_Bad,1;
            SetDO Fumex_Filter_Good,0;
            UpdateTP("Error: FUMEX FILTER (PRE) needs replaced and reset");
            PrintTP;
        ELSEIF Fumex_GasOdor=1
        THEN
            SetDO Fumex_Filter_Bad,1;
            SetDO Fumex_Filter_Good,0;
            UpdateTP("Error: FUMEX FILTER (GAS) needs replaced and reset");
            PrintTP;
        ELSE
            SetDO Fumex_Filter_Bad,0;
            SetDO Fumex_Filter_Good,1;
        ENDIF

        !Now check if the filter was bad and stop the proram if it was
        IF Fumex_Filter_Bad=1 AND Fumex_Filter_Good=0
        THEN
            stacklights.blinkColorStatus.White:=TRUE;
            stacklights.blinkColorStatus.Blue:=TRUE;
            UpdateTP("Robot has shutdown suddenly. Check fixtures");
            PrintTP;
            SetDO Fumex_Power,0;
            STOP;
            EXIT;
        ENDIF
    ENDPROC

    PROC FumexPartCountReset()
        !This function resets the part count for the fumex filter replacement, this function should be activated manually only
        !This function should only be activated after replacing the filter in order to not burn out the electronics on the Fumex
        EraseTP("");
        filterMaintCounter:=0;
        UpdateTP("Fumex filter part count has been reset correctly!");
        PrintTP;
    ENDPROC
ENDMODULE