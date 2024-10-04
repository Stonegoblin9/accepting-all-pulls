MODULE BushingCabinetMethods

    !BUSHING PICKUP (BP)
    CONST robtarget Bushing_Home:=[[493.24,642.80,-693.14],[0.705816,-0.0115397,0.00873634,0.708248],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget BP_Tray1_App10:=[[416.37,-92.05,-511.37],[0.683602,-0.176133,-0.164351,0.688951],[-2,2,-3,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray1_App20:=[[177.03,-91.93,-516.34],[0.683625,-0.176124,-0.164358,0.68893],[-1,2,-3,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray1_Pick_Front:=[[-11.51,-36.90,-0.19],[0.171123,0.683956,-0.172967,0.687753],[-1,2,-3,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray1_Pick_Back:=[[-8.90,-39.42,1.30],[0.17204,0.689413,-0.167919,0.683312],[-1,2,-3,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray1_Dep10:=[[177.01,-90.62,-516.34],[0.683598,-0.176138,-0.164347,0.688955],[-1,2,-3,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray1_Dep20:=[[302.10,-54.27,-587.15],[0.705832,-0.0113097,0.00857245,0.708237],[-1,1,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget BP_Tray2_App10:=[[416.20,55.02,-525.11],[0.686808,-0.163544,-0.144173,0.69337],[-2,2,-3,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray2_App20:=[[162.78,45.18,-512.38],[0.685517,-0.168698,-0.1499,0.692197],[-1,2,-3,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray2_Pick_Front:=[[-1.53,-5.67,-1.62],[0.370056,-0.600867,0.378819,0.59876],[-1,3,-4,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray2_Pick_Back:=[[-46.19,-0.56,0.00],[0.368679,-0.601464,0.377977,0.599542],[-1,2,-3,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray2_Dep10:=[[159.81,66.40,-512.96],[0.685671,-0.168693,-0.150126,0.691997],[-1,2,-3,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray2_Dep20:=[[351.01,58.54,-617.54],[0.690756,-0.144469,-0.125586,0.69729],[-1,2,-3,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget BP_Tray3_App10:=[[478.65,218.32,-500.57],[0.705313,-0.00484739,0.00726014,0.708842],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray3_App20:=[[223.66,170.82,-485.28],[0.705956,-0.000929159,0.0104639,0.708178],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray3_Pick_Front:=[[6.01,0.64,-2.44],[0.00380471,-0.707015,-0.000994372,-0.707187],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray3_Pick_Back:=[[1.03,-1.53,4.26],[0.00340207,-0.707151,-0.00327585,-0.707047],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray3_Dep10:=[[223.64,168.24,-485.25],[0.706025,-0.00096202,0.0103975,0.70811],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray3_Dep20:=[[468.39,182.33,-512.19],[0.706223,-0.0119697,0.00903497,0.70783],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget BP_Tray4_App10:=[[517.48,356.84,-511.28],[0.704153,-0.01228,0.00887796,0.709886],[-2,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray4_App20:=[[214.04,387.57,-507.46],[0.704348,-0.0123242,0.0088873,0.709692],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray4_Pick_Front:=[[2.19,1.21,-1.28],[0.00241641,-0.707033,0.00239878,-0.707173],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray4_Pick_Back:=[[1.54,-44.65,0.04],[0.0017575,-0.702059,0.00336289,-0.712109],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray4_Dep10:=[[215.08,388.89,-506.56],[0.704336,-0.0124278,0.00889176,0.709702],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray4_Dep20:=[[293.36,344.19,-620.09],[0.704231,-0.0123468,0.00886328,0.709808],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget BP_Tray5_App10:=[[168.23,513.43,-672.48],[0.709398,-0.129881,-0.116185,0.682925],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray5_App20:=[[167.85,515.88,-513.97],[0.709473,-0.129853,-0.11623,0.682845],[-1,-1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray5_Pick:=[[168.36,553.65,-515.48],[0.709318,-0.129866,-0.116111,0.683024],[-1,-1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray5_Pick_Front:=[[-0.68,0.01,-0.01],[0.137414,0.694919,-0.109401,0.697307],[-1,-1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray5_Pick_Back:=[[-4.25,-46.68,1.75],[0.137721,0.694888,-0.109683,0.697233],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray5_Dep10:=[[166.75,515.83,-513.57],[0.709405,-0.12988,-0.116176,0.68292],[-1,-1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray5_Dep20:=[[168.21,471.31,-678.66],[0.709418,-0.129871,-0.116209,0.682901],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget BP_Tray6_App10:=[[525.58,621.02,-596.49],[0.721396,-0.0016962,0.00643512,0.692491],[-2,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray6_App20:=[[221.05,648.40,-514.04],[0.72128,-0.00505238,0.00720356,0.692588],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray6_Pick_Front:=[[-16.80,-2.74,4.24],[0.0111243,0.70848,0.0158699,0.705464],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray6_Pick_Back:=[[-6.73,-3.55,3.87],[0.0092769,0.706892,0.0180186,0.707031],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray6_Dep10:=[[220.57,648.43,-513.53],[0.721285,-0.001763,0.00643777,0.692606],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BP_Tray6_Dep20:=[[220.32,582.36,-600.40],[0.721403,-0.0016072,0.0064493,0.692484],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !Drawer Open (DO)
    CONST robtarget Drawer1_Open10:=[[269.68,50.06,23.37],[0.705658,-0.0122194,0.00928467,0.708386],[-1,1,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer1_Open20:=[[151.45,52.94,24.91],[0.705624,-0.0122379,0.00929359,0.70842],[-1,1,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer1_Open30:=[[152.30,42.18,-648.65],[0.705462,-0.0122118,0.009319,0.708582],[-1,1,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer1_Open40:=[[152.66,-36.34,-617.44],[0.705477,-0.0121844,0.00933253,0.708566],[-1,1,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer2_Open10:=[[269.86,186.00,23.90],[0.705596,-0.0116621,0.00886838,0.708463],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer2_Open20:=[[150.10,186.17,23.23],[0.705523,-0.0116873,0.00892325,0.708534],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer2_Open30:=[[149.98,175.57,-651.03],[0.705231,-0.0117559,0.00907208,0.708823],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer2_Open40:=[[150.15,93.47,-627.54],[0.705314,-0.0117839,0.00903427,0.70874],[-1,1,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer3_Open10:=[[270.00,322.92,14.38],[0.705601,-0.01159,0.0088868,0.708459],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer3_Open20:=[[151.61,323.14,18.73],[0.705499,-0.0116157,0.008918,0.708559],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer3_Open30:=[[147.13,311.87,-639.02],[0.7059,-0.0113269,0.00885025,0.708166],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer3_Open40:=[[147.11,216.57,-614.75],[0.705757,-0.0115776,0.00886326,0.708304],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer4_Open10:=[[260.84,457.50,10.82],[0.705635,-0.0115747,0.00882609,0.708426],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer4_Open20:=[[147.69,458.00,14.28],[0.705535,-0.011625,0.00885115,0.708525],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer4_Open30:=[[145.74,450.83,-652.08],[0.705942,-0.0114069,0.00865762,0.708124],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer4_Open40:=[[145.66,374.84,-629.98],[0.705631,-0.0116449,0.00889814,0.708428],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer5_Open10:=[[270.20,589.95,13.44],[0.70573,-0.0115883,0.0088134,0.708331],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer5_Open20:=[[150.61,593.34,16.05],[0.705665,-0.0115407,0.00883163,0.708397],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer5_Open30:=[[155.15,581.23,-650.75],[0.706052,-0.0113647,0.00863214,0.708017],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer5_Open50:=[[140.45,522.62,-630.32],[0.69438,0.00655434,-0.00942629,0.719517],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer6_Open10:=[[244.80,729.16,4.26],[0.705799,-0.0115475,0.0086793,0.708265],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer6_Open20:=[[148.36,729.48,4.62],[0.705851,-0.0115669,0.00862304,0.708213],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer6_Open30:=[[147.84,719.70,-666.23],[0.706228,-0.0112979,0.00863826,0.707842],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer6_Open40:=[[148.38,633.47,-627.62],[0.705996,-0.0115798,0.0085154,0.70807],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !Drawer Close (DC)
    CONST robtarget Drawer1_CloseHome:=[[131.50,86.15,-819.95],[0.706103,-0.0117733,0.00916347,0.707952],[-1,1,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer2_CloseHome:=[[131.94,223.34,-822.30],[0.706102,-0.0117747,0.00916156,0.707953],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer3_CloseHome:=[[132.37,360.53,-824.65],[0.706102,-0.0117757,0.00916314,0.707953],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer4_CloseHome:=[[141.02,377.47,-879.12],[0.705654,-0.0116547,0.00898122,0.708404],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer5_CloseHome:=[[133.25,637.88,-829.40],[0.706102,-0.0117769,0.00916268,0.707952],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer6_CloseHome:=[[137.50,634.09,-879.92],[0.705783,-0.0116683,0.00902236,0.708275],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer1_Close10:=[[131.52,90.11,-761.12],[0.70638,-0.011748,0.00895566,0.707679],[-1,1,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer1_Close20:=[[133.92,98.79,-82.21],[0.706223,-0.011846,0.00897992,0.707833],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer1_Close30:=[[280.70,98.32,-82.75],[0.706215,-0.0118478,0.00901754,0.707841],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer2_Close10:=[[132.18,224.69,-743.78],[0.706252,-0.01178,0.00898026,0.707805],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer2_Close20:=[[134.36,235.97,-84.56],[0.706228,-0.0118432,0.0089786,0.707829],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer2_Close30:=[[281.14,235.50,-85.10],[0.70622,-0.0118443,0.00901812,0.707836],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer3_Close10:=[[132.61,361.88,-746.13],[0.70625,-0.0117825,0.00897981,0.707808],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer3_Close20:=[[134.79,373.17,-86.91],[0.706223,-0.0118442,0.00898123,0.707834],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer3_Close30:=[[281.57,372.69,-87.45],[0.706213,-0.0118442,0.00902064,0.707843],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer4_Close10:=[[132.98,498.76,-767.34],[0.706236,-0.0117919,0.00899748,0.707821],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer4_Close20:=[[135.22,510.37,-88.27],[0.706228,-0.0118427,0.00897036,0.707828],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer4_Close30:=[[282.00,509.88,-89.80],[0.706217,-0.0118401,0.00902122,0.707839],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer5_Close10:=[[133.48,636.26,-750.83],[0.706256,-0.0117787,0.008977,0.707802],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer5_Close20:=[[135.66,647.52,-91.61],[0.706226,-0.0118427,0.00897675,0.707831],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer5_Close30:=[[282.44,647.13,-92.15],[0.706222,-0.0118404,0.00901542,0.707834],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer6_Close10:=[[131.16,773.61,-757.00],[0.706131,-0.0117839,0.00912575,0.707924],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer6_Close20:=[[133.38,784.95,-91.85],[0.706157,-0.0117783,0.00908532,0.707899],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Drawer6_Close30:=[[242.12,784.65,-92.22],[0.70618,-0.0118128,0.00907945,0.707875],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !BUSHING TRAY VARIABLES
    PERS byte bushingDoor1;
    PERS byte bushingDoor2;

    !CHANGING TO BE BASED OFF OF TRAY NUMBER RATHER THAN ASSIGNED BUSHING SIZE
    !Tray 1 & 4 (Bottom) =  400s    10x14   = 140
    !Tray 2 & 5 (Middle) =  600s    9x14    = 126
    !Tray 3 & 6 (Top) =     800s    8x12    = 96

    !Part index for each tray (Resets when the Program Pointer is reset)
    VAR num tray1Index;
    VAR num tray2Index;
    VAR num tray3Index;
    VAR num tray4Index;
    VAR num tray5Index;
    VAR num tray6Index;

    !Parts per Tray
    VAR num tray1MaxIndex:=140;
    VAR num tray2MaxIndex:=126;
    VAR num tray3MaxIndex:=96;
    VAR num tray4MaxIndex:=140;
    VAR num tray5MaxIndex:=126;
    VAR num tray6MaxIndex:=96;

    !All of the X offsets for the trays
    VAR num tray1XOffset:=-28.575;
    VAR num tray2XOffset:=-31.85;
    VAR num tray3XOffset:=-33.02;
    VAR num tray4XOffset:=-28.575;
    VAR num tray5XOffset:=-31.75;
    VAR num tray6XOffset:=-33.02;

    !All of the Y offsets for the trays
    VAR num tray1YOffset:=44.45;
    VAR num tray2YOffset:=46.99;
    VAR num tray3YOffset:=50.8;
    VAR num tray4YOffset:=44.5;
    VAR num tray5YOffset:=46.99;
    VAR num tray6YOffset:=50.8;

    !Add in Z Height Offsets (So it's adjustable too)
    VAR num tray1ZOffset_1:=0;
    VAR num tray1ZOffset_2:=0;
    VAR num tray2ZOffset_1:=0;
    VAR num tray2ZOffset_2:=1;
    VAR num tray3ZOffset_1:=0;
    VAR num tray3ZOffset_2:=0;
    VAR num tray4ZOffset_1:=0;
    VAR num tray4ZOffset_2:=0;
    VAR num tray5ZOffset_1:=0;
    VAR num tray5ZOffset_2:=0;
    VAR num tray6ZOffset_1:=0;
    VAR num tray6ZOffset_2:=0;

    !Add in a Z offset between trays so that we can keep one home location
    VAR num TraySeparation:=133;

    !All of the X2 offsets for the second tray separation in each drawer
    VAR num tray1X2Offset:=-335;
    VAR num tray2X2Offset:=-335;
    VAR num tray3X2Offset:=-338;
    VAR num tray4X2Offset:=-335;
    VAR num tray5X2Offset:=-335;
    VAR num tray6X2Offset:=-338;

    !Drawer Relations (Which drawers have similar parts)
    !I created an array where each index corresponds to the drawer number, each value at the index corresponds to the drawer that one is related to
    VAR num TrayRelations{6}:=[4,5,6,1,2,3];

    !Current Drawer variables (Need one per size of bushing)
    PERS num currentDrawer_400:=4;
    PERS num currentDrawer_600:=5;
    PERS num currentDrawer_800:=6;

    !Current row and column values
    VAR num currentCol:=0;
    VAR num currentRow:=0;

    !Second set Active booleans
    PERS bool drawer1Tray2Active:=FALSE;
    PERS bool drawer2Tray2Active:=FALSE;
    PERS bool drawer3Tray2Active:=FALSE;
    PERS bool drawer4Tray2Active:=FALSE;
    PERS bool drawer5Tray2Active:=FALSE;
    PERS bool drawer6Tray2Active:=FALSE;

    !Skipped Counters
    VAR num totalSkips_400:=0;
    VAR num totalSkips_600:=0;
    VAR num totalSkips_800:=0;
    PERS num maxSkips_400:=85;
    PERS num maxSkips_600:=85;
    PERS num maxSkips_800:=72;

    !Setting up the acceleration limits on the drawer open / closing operations
    VAR num maxAcceleration:=.35;
    VAR num maxDeceleration:=.125;

    !Merge Sort Method Variables
    PERS num startIndex:=75;
    PERS num endIndex:=76;
    PERS num currentRow_Merge:=5;
    PERS num currentCol_Merge:=9;
    PERS num SwitchTrayCount:=0;

    PROC Bushing()
        !If Cognex snap says ok we are going to skip getting another bushing and try again
        IF retryPress
        THEN
            !Skip this part
        ELSE
            Drawers_Open_Check;
            IF partNumber=11 OR partNumber=12 OR partNumber=13 OR partNumber=14 OR partNumber=15 OR partNumber=16
            OR partNumber=17 OR partNumber=18 OR partNumber=20 OR partNumber=21 OR partNumber=23 OR partNumber=24
            THEN
                Bushing_Pickup;
                Bushing_Dropoff;
            ENDIF
        ENDIF
    ENDPROC

    PROC Drawers_Open_Check()
        IF partNumber<=10 OR partNumber=19 OR partNumber=22 OR partNumber=25 OR partNumber=26 OR partNumber=27
        THEN
            !Close all drawers
            Close_All_Drawers(0);
        ELSEIF partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18
        THEN
            !Close all but the 400 size drawer
            Close_All_Drawers(currentDrawer_400);
        ELSEIF partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21
        THEN
            !Close all but the 600 size drawer
            Close_All_Drawers(currentDrawer_600);
        ELSEIF partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24
        THEN
            !Close all but the 800 size drawer
            Close_All_Drawers(currentDrawer_800);
        ENDIF
    ENDPROC

    PROC IncrimentDrawerLocation(byte currentDrawer)
        IF currentDrawer=1
        THEN
            tray1Index:=tray1Index+1;
            IF tray1Index>=tray1MaxIndex
            THEN
                IF drawer1Tray2Active
                THEN
                    !We need to switch to the other drawer entirely
                    drawer1Tray2Active:=FALSE;
                    SwitchTrays(currentDrawer);
                ELSE
                    !We need to switch trays in the drawer
                    drawer1Tray2Active:=TRUE;
                ENDIF
            ENDIF
            tray1Index:=tray1Index MOD (tray1MaxIndex);
        ELSEIF currentDrawer=2
        THEN
            tray2Index:=tray2Index+1;
            IF tray2Index>=tray2MaxIndex
            THEN
                IF drawer2Tray2Active
                THEN
                    !We need to switch to the other drawer entirely
                    drawer2Tray2Active:=FALSE;
                    SwitchTrays(currentDrawer);
                ELSE
                    !We need to switch trays in the drawer
                    drawer2Tray2Active:=TRUE;
                ENDIF
            ENDIF
            tray2Index:=tray2Index MOD (tray2MaxIndex);
        ELSEIF currentDrawer=3
        THEN
            tray3Index:=tray3Index+1;
            IF tray3Index>=tray3MaxIndex
            THEN
                IF drawer3Tray2Active
                THEN
                    !We need to switch to the other drawer entirely
                    drawer3Tray2Active:=FALSE;
                    SwitchTrays(currentDrawer);
                ELSE
                    !We need to switch trays in the drawer
                    drawer3Tray2Active:=TRUE;
                ENDIF
            ENDIF
            tray3Index:=tray3Index MOD (tray3MaxIndex);
        ELSEIF currentDrawer=4
        THEN
            tray4Index:=tray4Index+1;
            IF tray4Index>=tray4MaxIndex
            THEN
                IF drawer4Tray2Active
                THEN
                    !We need to switch to the other drawer entirely
                    drawer4Tray2Active:=FALSE;
                    SwitchTrays(currentDrawer);
                ELSE
                    !We need to switch trays in the drawer
                    drawer4Tray2Active:=TRUE;
                ENDIF
            ENDIF
            tray4Index:=tray4Index MOD (tray4MaxIndex);
        ELSEIF currentDrawer=5
        THEN
            tray5Index:=tray5Index+1;
            IF tray5Index>=tray5MaxIndex
            THEN
                IF drawer5Tray2Active
                THEN
                    !We need to switch to the other drawer entirely
                    drawer5Tray2Active:=FALSE;
                    SwitchTrays(currentDrawer);
                ELSE
                    !We need to switch trays in the drawer
                    drawer5Tray2Active:=TRUE;
                ENDIF
            ENDIF
            tray5Index:=tray5Index MOD (tray5MaxIndex);
        ELSEIF currentDrawer=6
        THEN
            tray6Index:=tray6Index+1;
            IF tray6Index>=tray6MaxIndex
            THEN
                IF drawer6Tray2Active
                THEN
                    !We need to switch to the other drawer entirely
                    drawer6Tray2Active:=FALSE;
                    SwitchTrays(currentDrawer);
                ELSE
                    !We need to switch trays in the drawer
                    drawer6Tray2Active:=TRUE;
                ENDIF
            ENDIF
            tray6Index:=tray6Index MOD (tray6MaxIndex);
        ENDIF
    ENDPROC

    PROC SwitchTrays(byte currentDrawer)
        !This logic will need reviewed if bushing designation is changed for a tray (logic is hardcoded)

        !Before switching trays close the current drawer so that we don't have a weird home location problem
        Close_All_Drawers(0);

        !Now swich the drawer number
        IF currentDrawer=1 OR currentDrawer=4
        THEN
            currentDrawer_400:=TrayRelations{currentDrawer};
        ELSEIF currentDrawer=2 OR currentDrawer=5
        THEN
            currentDrawer_600:=TrayRelations{currentDrawer};
        ELSEIF currentDrawer=3 OR currentDrawer=6
        THEN
            currentDrawer_800:=TrayRelations{currentDrawer};
        ENDIF
    ENDPROC

    !Pass in the drawer you want to keep open, value = 0 means close all drawers
    PROC Close_All_Drawers(byte keepOpen)
        VAR bool drawersToClose:=FALSE;
        !Check if any drawers need to be opened or closed
        IF keepOpen=1 AND (Bushing_Drawer_2=1 OR Bushing_Drawer_3=1 OR Bushing_Drawer_4=1 OR Bushing_Drawer_5=1 OR Bushing_Drawer_6=1)
        THEN
            drawersToClose:=TRUE;
        ELSEIF keepOpen=2 AND (Bushing_Drawer_1=1 OR Bushing_Drawer_3=1 OR Bushing_Drawer_4=1 OR Bushing_Drawer_5=1 OR Bushing_Drawer_6=1)
        THEN
            drawersToClose:=TRUE;
        ELSEIF keepOpen=3 AND (Bushing_Drawer_1=1 OR Bushing_Drawer_2=1 OR Bushing_Drawer_4=1 OR Bushing_Drawer_5=1 OR Bushing_Drawer_6=1)
        THEN
            drawersToClose:=TRUE;
        ELSEIF keepOpen=4 AND (Bushing_Drawer_1=1 OR Bushing_Drawer_2=1 OR Bushing_Drawer_3=1 OR Bushing_Drawer_5=1 OR Bushing_Drawer_6=1)
        THEN
            drawersToClose:=TRUE;
        ELSEIF keepOpen=5 AND (Bushing_Drawer_1=1 OR Bushing_Drawer_2=1 OR Bushing_Drawer_3=1 OR Bushing_Drawer_4=1 OR Bushing_Drawer_6=1)
        THEN
            drawersToClose:=TRUE;
        ELSEIF keepOpen=6 AND (Bushing_Drawer_1=1 OR Bushing_Drawer_2=1 OR Bushing_Drawer_3=1 OR Bushing_Drawer_4=1 OR Bushing_Drawer_5=1)
        THEN
            drawersToClose:=TRUE;
        ELSEIF keepOpen=0
        THEN
            drawersToClose:=TRUE;
        ENDIF

        IF drawersToClose
        THEN
            !Closing the drawers one at a time
            IF Bushing_Drawer_1=1
            THEN
                !Close drawer 1
                Close_Drawer1;
            ENDIF

            IF Bushing_Drawer_2=1
            THEN
                !Close drawer 2
                Close_Drawer2;
            ENDIF

            IF Bushing_Drawer_3=1
            THEN
                !Close drawer 3
                Close_Drawer3;
            ENDIF

            IF Bushing_Drawer_4=1
            THEN
                !Close drawer 4
                Close_Drawer4;
            ENDIF

            IF Bushing_Drawer_5=1
            THEN
                !Close drawer 5
                Close_Drawer5;
            ENDIF

            IF Bushing_Drawer_6=1
            THEN
                !Close drawer 6
                Close_Drawer6;
            ENDIF

            !Open the drawer that we want to keep open
            IF keepOpen=1
            THEN
                !Drawer 1 is currently closed and needs to be opened
                SetDO Gripper_Actuate,1;
                MoveL Drawer1_Open10,v600,z10,gripper\WObj:=wobj_Bushing;
                MoveL Drawer1_Open20,v400,fine,gripper\WObj:=wobj_Bushing;

                PathAccLim TRUE\AccMax:=maxAcceleration,TRUE\DecelMax:=maxDeceleration;
                MoveL Drawer1_Open30,v1000,fine,gripper\WObj:=wobj_Bushing;
                PathAccLim FALSE,FALSE;

                Waittime 1;
                MoveL Drawer1_Open40,v400,z10,gripper\WObj:=wobj_Bushing;
                MoveJ Offs(Bushing_Home,0,-TraySeparation*5,0),v600,z100,gripper\WObj:=wobj_Bushing;
            ELSEIF keepOpen=2
            THEN
                !Drawer 2 is currently closed and needs to be opened
                SetDO Gripper_Actuate,1;
                MoveL Drawer2_Open10,v600,z10,gripper\WObj:=wobj_Bushing;
                MoveL Drawer2_Open20,v400,fine,gripper\WObj:=wobj_Bushing;

                PathAccLim TRUE\AccMax:=maxAcceleration,TRUE\DecelMax:=maxDeceleration;
                MoveL Drawer2_Open30,v1000,fine,gripper\WObj:=wobj_Bushing;
                PathAccLim FALSE,FALSE;

                Waittime 1;
                MoveL Drawer2_Open40,v400,z10,gripper\WObj:=wobj_Bushing;
                MoveJ Offs(Bushing_Home,0,-TraySeparation*4,0),v600,z100,gripper\WObj:=wobj_Bushing;
            ELSEIF keepOpen=3
            THEN
                !Drawer 3 is currently closed and needs to be opened
                SetDO Gripper_Actuate,1;
                MoveL Drawer3_Open10,v600,z10,gripper\WObj:=wobj_Bushing;
                MoveL Drawer3_Open20,v400,fine,gripper\WObj:=wobj_Bushing;

                PathAccLim TRUE\AccMax:=maxAcceleration,TRUE\DecelMax:=maxDeceleration;
                MoveL Drawer3_Open30,v1000,fine,gripper\WObj:=wobj_Bushing;
                PathAccLim FALSE,FALSE;

                Waittime 1;
                MoveL Drawer3_Open40,v400,z10,gripper\WObj:=wobj_Bushing;
                MoveJ Offs(Bushing_Home,0,-TraySeparation*3,0),v600,z100,gripper\WObj:=wobj_Bushing;
            ELSEIF keepOpen=4
            THEN
                !Drawer 4 is currently closed and needs to be opened
                SetDO Gripper_Actuate,1;
                MoveL Drawer4_Open10,v600,z10,gripper\WObj:=wobj_Bushing;
                MoveL Drawer4_Open20,v400,fine,gripper\WObj:=wobj_Bushing;

                PathAccLim TRUE\AccMax:=maxAcceleration,TRUE\DecelMax:=maxDeceleration;
                MoveL Drawer4_Open30,v1000,fine,gripper\WObj:=wobj_Bushing;
                PathAccLim FALSE,FALSE;

                Waittime 1;
                MoveL Drawer4_Open40,v400,z10,gripper\WObj:=wobj_Bushing;
                MoveJ Offs(Bushing_Home,0,-TraySeparation*2,0),v600,z100,gripper\WObj:=wobj_Bushing;
            ELSEIF keepOpen=5
            THEN
                !Drawer 5 is currently closed and needs to be opened
                SetDO Gripper_Actuate,1;
                MoveJ Drawer5_Open10,v600,z10,gripper\WObj:=wobj_Bushing;
                MoveL Drawer5_Open20,v400,fine,gripper\WObj:=wobj_Bushing;

                PathAccLim TRUE\AccMax:=maxAcceleration,TRUE\DecelMax:=maxDeceleration;
                MoveL Drawer5_Open30,v1000,fine,gripper\WObj:=wobj_Bushing;
                PathAccLim FALSE,FALSE;

                Waittime 1;
                MoveL Drawer5_Open50,v400,z10,gripper\WObj:=wobj_Bushing;
                MoveJ Offs(Bushing_Home,0,-TraySeparation*1,0),v600,z100,gripper\WObj:=wobj_Bushing;
            ELSEIF keepOpen=6
            THEN
                !Drawer 6 is currently closed and needs to be opened
                SetDO Gripper_Actuate,1;
                MoveL Drawer6_Open10,v600,z10,gripper\WObj:=wobj_Bushing;
                MoveL Drawer6_Open20,v400,fine,gripper\WObj:=wobj_Bushing;

                PathAccLim TRUE\AccMax:=maxAcceleration,TRUE\DecelMax:=maxDeceleration;
                MoveL Drawer6_Open30,v1000,fine,gripper\WObj:=wobj_Bushing;
                PathAccLim FALSE,FALSE;

                Waittime 1;
                MoveL Drawer6_Open40,v400,z10,gripper\WObj:=wobj_Bushing;
                MoveJ Offs(Bushing_Home,0,-TraySeparation*0,0),v600,z100,gripper\WObj:=wobj_Bushing;
            ENDIF
        ENDIF
    ENDPROC

    PROC Close_Drawer1()
        WaitDI s9,1;
        !Wait for bushing cabinet door safety sensors to be initiated (Door closed)
        WaitDI s10,1;
        IF DInput(Bushing_Drawer_1)=1
        THEN
            MoveJ Offs(Bushing_Home,0,-TraySeparation*5,0),v400,fine,gripper\WObj:=wobj_Bushing;
            MoveJ Drawer1_CloseHome,v600,z100,gripper\WObj:=wobj_Bushing;
            MoveL Drawer1_Close10,v400,z10,gripper\WObj:=wobj_Bushing;
            WaitTime 1;

            PathAccLim TRUE\AccMax:=maxAcceleration,TRUE\DecelMax:=maxDeceleration;
            MoveL Drawer1_Close20,v1000,fine,gripper\WObj:=wobj_Bushing;
            PathAccLim FALSE,FALSE;

            MoveL Drawer1_Close30,v400,z10,gripper\WObj:=wobj_Bushing;
            MoveJ Drawer1_CloseHome,v600,z100,gripper\WObj:=wobj_Bushing;
            MoveJ Offs(Bushing_Home,0,-TraySeparation*5,0),v400,fine,gripper\WObj:=wobj_Bushing;
        ENDIF
    ENDPROC

    PROC Close_Drawer2()
        WaitDI s9,1;
        !Wait for bushing cabinet door safety sensors to be initiated (Door closed)
        WaitDI s10,1;
        IF DInput(Bushing_Drawer_2)=1
        THEN
            MoveJ Offs(Bushing_Home,0,-TraySeparation*4,0),v400,fine,gripper\WObj:=wobj_Bushing;
            MoveJ Drawer2_CloseHome,v600,z100,gripper\WObj:=wobj_Bushing;
            MoveL Drawer2_Close10,v400,z10,gripper\WObj:=wobj_Bushing;
            WaitTime 1;

            PathAccLim TRUE\AccMax:=maxAcceleration,TRUE\DecelMax:=maxDeceleration;
            MoveL Drawer2_Close20,v1000,fine,gripper\WObj:=wobj_Bushing;
            PathAccLim FALSE,FALSE;

            MoveL Drawer2_Close30,v400,z10,gripper\WObj:=wobj_Bushing;
            MoveJ Drawer2_CloseHome,v600,z100,gripper\WObj:=wobj_Bushing;
            MoveJ Offs(Bushing_Home,0,-TraySeparation*4,0),v400,fine,gripper\WObj:=wobj_Bushing;
        ENDIF
    ENDPROC

    PROC Close_Drawer3()
        WaitDI s9,1;
        !Wait for bushing cabinet door safety sensors to be initiated (Door closed)
        WaitDI s10,1;
        IF DInput(Bushing_Drawer_3)=1
        THEN
            MoveJ Offs(Bushing_Home,0,-TraySeparation*3,0),v400,fine,gripper\WObj:=wobj_Bushing;
            MoveJ Drawer3_CloseHome,v600,z100,gripper\WObj:=wobj_Bushing;
            MoveL Drawer3_Close10,v400,z10,gripper\WObj:=wobj_Bushing;
            WaitTime 1;

            PathAccLim TRUE\AccMax:=maxAcceleration,TRUE\DecelMax:=maxDeceleration;
            MoveL Drawer3_Close20,v1000,fine,gripper\WObj:=wobj_Bushing;
            PathAccLim FALSE,FALSE;

            MoveL Drawer3_Close30,v400,z10,gripper\WObj:=wobj_Bushing;
            MoveJ Drawer3_CloseHome,v600,z100,gripper\WObj:=wobj_Bushing;
            MoveJ Offs(Bushing_Home,0,-TraySeparation*3,0),v400,fine,gripper\WObj:=wobj_Bushing;
        ENDIF
    ENDPROC

    PROC Close_Drawer4()
        WaitDI s9,1;
        !Wait for bushing cabinet door safety sensors to be initiated (Door closed)
        WaitDI s10,1;
        IF DInput(Bushing_Drawer_4)=1
        THEN
            MoveJ Offs(Bushing_Home,0,-TraySeparation*2,0),v400,fine,gripper\WObj:=wobj_Bushing;
            MoveJ Drawer4_CloseHome,v600,z100,gripper\WObj:=wobj_Bushing;
            MoveL Drawer4_Close10,v400,fine,gripper\WObj:=wobj_Bushing;
            WaitTime 1;

            PathAccLim TRUE\AccMax:=maxAcceleration,TRUE\DecelMax:=maxDeceleration;
            MoveL Drawer4_Close20,v1000,fine,gripper\WObj:=wobj_Bushing;
            PathAccLim FALSE,FALSE;

            MoveL Drawer4_Close30,v400,z10,gripper\WObj:=wobj_Bushing;
            MoveJ Drawer4_CloseHome,v600,z100,gripper\WObj:=wobj_Bushing;
            MoveJ Offs(Bushing_Home,0,-TraySeparation*2,0),v400,fine,gripper\WObj:=wobj_Bushing;
        ENDIF
    ENDPROC

    PROC Close_Drawer5()
        WaitDI s9,1;
        !Wait for bushing cabinet door safety sensors to be initiated (Door closed)
        WaitDI s10,1;
        IF DInput(Bushing_Drawer_5)=1
        THEN
            MoveJ Offs(Bushing_Home,0,-TraySeparation*1,0),v400,fine,gripper\WObj:=wobj_Bushing;
            MoveJ Drawer5_CloseHome,v600,z50,gripper\WObj:=wobj_Bushing;
            MoveL Drawer5_Close10,v400,z10,gripper\WObj:=wobj_Bushing;
            WaitTime 1;

            PathAccLim TRUE\AccMax:=maxAcceleration,TRUE\DecelMax:=maxDeceleration;
            MoveL Drawer5_Close20,v1000,fine,gripper\WObj:=wobj_Bushing;
            PathAccLim FALSE,FALSE;

            MoveL Drawer5_Close30,v600,z10,gripper\WObj:=wobj_Bushing;
            MoveJ Offs(Bushing_Home,0,-TraySeparation*1,0),v400,fine,gripper\WObj:=wobj_Bushing;
        ENDIF
    ENDPROC


    PROC Close_Drawer6()
        WaitDI s9,1;
        !Wait for bushing cabinet door safety sensors to be initiated (Door closed)
        WaitDI s10,1;
        IF DInput(Bushing_Drawer_6)=1
        THEN
            MoveJ Offs(Bushing_Home,0,-TraySeparation*0,0),v400,fine,gripper\WObj:=wobj_Bushing;
            MoveJ Drawer6_CloseHome,v600,z100,gripper\WObj:=wobj_Bushing;
            MoveL Drawer6_Close10,v400,z10,gripper\WObj:=wobj_Bushing;
            WaitTime 1;

            PathAccLim TRUE\AccMax:=maxAcceleration,TRUE\DecelMax:=maxDeceleration;
            MoveL Drawer6_Close20,v1000,fine,gripper\WObj:=wobj_Bushing;
            PathAccLim FALSE,FALSE;

            MoveL Drawer6_Close30,v400,z10,gripper\WObj:=wobj_Bushing;
            MoveJ Drawer6_CloseHome,v600,z100,gripper\WObj:=wobj_Bushing;
            MoveJ Offs(Bushing_Home,0,-TraySeparation*5,0),v400,fine,gripper\WObj:=wobj_Bushing;
        ENDIF
    ENDPROC

    FUNC num getTempPositionVar(num currentDrawer)
        VAR num temp:=0;
        IF currentDrawer=1
        THEN
            temp:=tray1MaxIndex;
        ELSEIF currentDrawer=2
        THEN
            temp:=tray2MaxIndex;
        ELSEIF currentDrawer=3
        THEN
            temp:=tray3MaxIndex;
        ELSEIF currentDrawer=4
        THEN
            temp:=tray4MaxIndex;
        ELSEIF currentDrawer=5
        THEN
            temp:=tray5MaxIndex;
        ELSEIF currentDrawer=6
        THEN
            temp:=tray6MaxIndex;
        ENDIF

        !Figure out how many bushings per column
        IF temp=140
        THEN
            temp:=10;
        ELSEIF temp=126
        THEN
            temp:=9;
        ELSEIF temp=96
        THEN
            temp:=8;
        ENDIF

        RETURN temp;
    ENDFUNC

    PROC getColRowMerge(num currentDrawer,num temp,num index)
        !Figure out current row / col based on that
        IF currentDrawer=1
        THEN
            currentCol_Merge:=Round(index/temp);
            IF (currentCol_Merge*temp)>index
            THEN
                currentCol_Merge:=currentCol_Merge-1;
            ENDIF
            currentRow_Merge:=index MOD temp;
        ELSEIF currentDrawer=2
        THEN
            currentCol_Merge:=Round(index/temp);
            IF (currentCol_Merge*temp)>index
            THEN
                currentCol_Merge:=currentCol_Merge-1;
            ENDIF
            currentRow_Merge:=index MOD temp;
        ELSEIF currentDrawer=3
        THEN
            currentCol_Merge:=Round(index/temp);
            IF (currentCol_Merge*temp)>index
            THEN
                currentCol_Merge:=currentCol_Merge-1;
            ENDIF
            currentRow_Merge:=index MOD temp;
        ELSEIF currentDrawer=4
        THEN
            currentCol_Merge:=Round(index/temp);
            IF (currentCol_Merge*temp)>index
            THEN
                currentCol_Merge:=currentCol_Merge-1;
            ENDIF
            currentRow_Merge:=index MOD temp;
        ELSEIF currentDrawer=5
        THEN
            currentCol_Merge:=Round(index/temp);
            IF (currentCol_Merge*temp)>index
            THEN
                currentCol_Merge:=currentCol_Merge-1;
            ENDIF
            currentRow_Merge:=index MOD temp;
        ELSEIF currentDrawer=6
        THEN
            currentCol_Merge:=Round(index/temp);
            IF (currentCol_Merge*temp)>index
            THEN
                currentCol_Merge:=currentCol_Merge-1;
            ENDIF
            currentRow_Merge:=index MOD temp;
        ENDIF
        !Account for the offset created by the MOD operator since we start counting at 1 instead of 0
        currentRow_Merge:=currentRow_Merge+1;
    ENDPROC

    FUNC bool updateNeedRetry(num currentDrawer,bool needRetry)
        !Check to make sure the current drawer is actually on it's second set of bushings near the back otherwise we can cancel the retry
        IF currentDrawer=1 AND drawer1Tray2Active=FALSE
        THEN
            needRetry:=FALSE;
        ELSEIF currentDrawer=2 AND drawer2Tray2Active=FALSE
        THEN
            needRetry:=FALSE;
        ELSEIF currentDrawer=3 AND drawer3Tray2Active=FALSE
        THEN
            needRetry:=FALSE;
        ELSEIF currentDrawer=4 AND drawer4Tray2Active=FALSE
        THEN
            needRetry:=FALSE;
        ELSEIF currentDrawer=5 AND drawer5Tray2Active=FALSE
        THEN
            needRetry:=FALSE;
        ELSEIF currentDrawer=6 AND drawer6Tray2Active=FALSE
        THEN
            needRetry:=FALSE;
        ENDIF

        RETURN needRetry;
    ENDFUNC

    PROC GetCurrentPositionInfo(num currentDrawer)
        VAR bool needRetry:=FALSE;
        VAR num temp:=0;
        temp:=getTempPositionVar(currentDrawer);

        !Figure out current row / col based on that
        IF currentDrawer=1
        THEN
            currentCol:=Round(tray1Index/temp);
            IF (currentCol*temp)>tray1Index
            THEN
                currentCol:=currentCol-1;
            ENDIF
            currentRow:=tray1Index MOD temp;
        ELSEIF currentDrawer=2
        THEN
            currentCol:=Round(tray2Index/temp);
            IF (currentCol*temp)>tray2Index
            THEN
                currentCol:=currentCol-1;
            ENDIF
            currentRow:=tray2Index MOD temp;
        ELSEIF currentDrawer=3
        THEN
            currentCol:=Round(tray3Index/temp);
            IF (currentCol*temp)>tray3Index
            THEN
                currentCol:=currentCol-1;
            ENDIF
            currentRow:=tray3Index MOD temp;
        ELSEIF currentDrawer=4
        THEN
            currentCol:=Round(tray4Index/temp);
            IF (currentCol*temp)>tray4Index
            THEN
                currentCol:=currentCol-1;
            ENDIF
            currentRow:=tray4Index MOD temp;
        ELSEIF currentDrawer=5
        THEN
            currentCol:=Round(tray5Index/temp);
            IF (currentCol*temp)>tray5Index
            THEN
                currentCol:=currentCol-1;
            ENDIF
            currentRow:=tray5Index MOD temp;
        ELSEIF currentDrawer=6
        THEN
            currentCol:=Round(tray6Index/temp);
            IF (currentCol*temp)>tray6Index
            THEN
                currentCol:=currentCol-1;
            ENDIF
            currentRow:=tray6Index MOD temp;
        ENDIF
        !Account for the offset created by the MOD operator since we start counting at 1 instead of 0
        currentRow:=currentRow+1;

        !Block out certain rows because the gripper will hit the cabinet based on the following rules
        !ONLY BLOCK OUT ROWS AND COLS FOR THE SECOND TRAY IN THE DRAWER
        !400 Size Bushing Max Row = 6 && Min Col = 1
        !600 Size Bushing Max Row = 4 && Min Col = 2
        !800 Size Bushing Max Row = && Min Col = 
        IF currentDrawer=currentDrawer_400
        THEN
            IF currentRow>7
            THEN
                needRetry:=TRUE;
            ELSEIF currentCol<1
            THEN
                needRetry:=TRUE;
            ENDIF
        ELSEIF currentDrawer=currentDrawer_600
        THEN
            IF currentRow>6
            THEN
                needRetry:=TRUE;
            ELSEIF currentCol<1
            THEN
                needRetry:=TRUE;
            ENDIF
        ELSEIF currentDrawer=currentDrawer_800
        THEN
            IF currentRow>5
            THEN
                needRetry:=TRUE;
            ELSEIF currentCol<1
            THEN
                needRetry:=TRUE;
            ENDIF
        ENDIF

        needRetry:=updateNeedRetry(currentDrawer,needRetry);

        IF needRetry
        THEN
            IncrimentDrawerLocation(currentDrawer);
            GetCurrentPositionInfo(currentDrawer);
        ENDIF
    ENDPROC

    PROC Open_Drawer(byte drawerToOpen)
        IF drawerToOpen=1 AND Bushing_Drawer_1=0
        THEN
            Close_All_Drawers(drawerToOpen);
            !Drawer 1 is currently closed and needs to be opened
            SetDO Gripper_Actuate,1;
            MoveL Drawer1_Open10,v600,z10,gripper\WObj:=wobj_Bushing;
            MoveL Drawer1_Open20,v400,fine,gripper\WObj:=wobj_Bushing;

            PathAccLim TRUE\AccMax:=maxAcceleration,TRUE\DecelMax:=maxDeceleration;
            MoveL Drawer1_Open30,v1000,fine,gripper\WObj:=wobj_Bushing;
            WaitTime(1);
            MoveL Offs(Drawer1_Open30,0,-15,0),v10,fine,gripper\WObj:=wobj_Bushing;
            PathAccLim FALSE,FALSE;

            MoveL Drawer1_Open40,v400,z10,gripper\WObj:=wobj_Bushing;
            MoveJ Offs(Bushing_Home,0,-TraySeparation*5,0),v600,z100,gripper\WObj:=wobj_Bushing;

            !Set the index for this drawer to 0 so that the robot forgets where it left off in the tray
            tray1Index:=0;
        ELSEIF drawerToOpen=2 AND Bushing_Drawer_2=0
        THEN
            Close_All_Drawers(drawerToOpen);
            !Drawer 2 is currently closed and needs to be opened
            !Drawer 1 is currently closed and needs to be opened
            SetDO Gripper_Actuate,1;
            MoveL Drawer2_Open10,v600,z10,gripper\WObj:=wobj_Bushing;
            MoveL Drawer2_Open20,v400,fine,gripper\WObj:=wobj_Bushing;

            PathAccLim TRUE\AccMax:=maxAcceleration,TRUE\DecelMax:=maxDeceleration;
            MoveL Drawer2_Open30,v1000,fine,gripper\WObj:=wobj_Bushing;
            WaitTime(1);
            MoveL Offs(Drawer2_Open30,0,-15,0),v10,fine,gripper\WObj:=wobj_Bushing;
            PathAccLim FALSE,FALSE;

            MoveL Drawer2_Open40,v400,z10,gripper\WObj:=wobj_Bushing;
            MoveJ Offs(Bushing_Home,0,-TraySeparation*4,0),v600,z100,gripper\WObj:=wobj_Bushing;

            !Set the index for this drawer to 0 so that the robot forgets where it left off in the tray
            tray2Index:=0;
        ELSEIF drawerToOpen=3 AND Bushing_Drawer_3=0
        THEN
            Close_All_Drawers(drawerToOpen);
            !Drawer 3 is currently closed and needs to be opened
            !Drawer 1 is currently closed and needs to be opened
            SetDO Gripper_Actuate,1;
            MoveL Drawer3_Open10,v600,z10,gripper\WObj:=wobj_Bushing;
            MoveL Drawer3_Open20,v400,fine,gripper\WObj:=wobj_Bushing;

            PathAccLim TRUE\AccMax:=maxAcceleration,TRUE\DecelMax:=maxDeceleration;
            MoveL Drawer3_Open30,v1000,fine,gripper\WObj:=wobj_Bushing;
            WaitTime(1);
            MoveL Offs(Drawer3_Open30,0,-15,0),v10,fine,gripper\WObj:=wobj_Bushing;
            PathAccLim FALSE,FALSE;

            MoveL Drawer3_Open40,v400,z10,gripper\WObj:=wobj_Bushing;
            MoveJ Offs(Bushing_Home,0,-TraySeparation*3,0),v600,z100,gripper\WObj:=wobj_Bushing;

            !Set the index for this drawer to 0 so that the robot forgets where it left off in the tray
            tray3Index:=0;
        ELSEIF drawerToOpen=4 AND Bushing_Drawer_4=0
        THEN
            Close_All_Drawers(drawerToOpen);
            !Drawer 4 is currently closed and needs to be opened
            !Drawer 1 is currently closed and needs to be opened
            SetDO Gripper_Actuate,1;
            MoveL Drawer4_Open10,v600,z10,gripper\WObj:=wobj_Bushing;
            MoveL Drawer4_Open20,v400,fine,gripper\WObj:=wobj_Bushing;

            PathAccLim TRUE\AccMax:=maxAcceleration,TRUE\DecelMax:=maxDeceleration;
            MoveL Drawer4_Open30,v1000,fine,gripper\WObj:=wobj_Bushing;
            WaitTime(1);
            MoveL Offs(Drawer4_Open30,0,-15,0),v10,fine,gripper\WObj:=wobj_Bushing;
            PathAccLim FALSE,FALSE;

            MoveL Drawer4_Open40,v400,z10,gripper\WObj:=wobj_Bushing;
            MoveJ Offs(Bushing_Home,0,-TraySeparation*2,0),v600,z100,gripper\WObj:=wobj_Bushing;

            !Set the index for this drawer to 0 so that the robot forgets where it left off in the tray
            tray4Index:=0;
        ELSEIF drawerToOpen=5 AND Bushing_Drawer_5=0
        THEN
            Close_All_Drawers(drawerToOpen);
            !Drawer 5 is currently closed and needs to be opened
            !Drawer 1 is currently closed and needs to be opened
            SetDO Gripper_Actuate,1;
            MoveJ Drawer5_Open10,v600,z10,gripper\WObj:=wobj_Bushing;
            MoveL Drawer5_Open20,v400,fine,gripper\WObj:=wobj_Bushing;

            PathAccLim TRUE\AccMax:=maxAcceleration,TRUE\DecelMax:=maxDeceleration;
            MoveL Drawer5_Open30,v1000,fine,gripper\WObj:=wobj_Bushing;
            WaitTime(1);
            MoveL Offs(Drawer5_Open30,0,-15,0),v10,fine,gripper\WObj:=wobj_Bushing;
            PathAccLim FALSE,FALSE;

            MoveL Drawer5_Open50,v400,z10,gripper\WObj:=wobj_Bushing;
            MoveJ Offs(Bushing_Home,0,-TraySeparation*1,0),v600,z100,gripper\WObj:=wobj_Bushing;

            !Set the index for this drawer to 0 so that the robot forgets where it left off in the tray
            tray5Index:=0;
        ELSEIF drawerToOpen=6 AND Bushing_Drawer_6=0
        THEN
            Close_All_Drawers(drawerToOpen);
            !Drawer 6 is currently closed and needs to be opened
            !Drawer 1 is currently closed and needs to be opened
            SetDO Gripper_Actuate,1;
            MoveL Drawer6_Open10,v600,z10,gripper\WObj:=wobj_Bushing;
            MoveL Drawer6_Open20,v400,fine,gripper\WObj:=wobj_Bushing;

            PathAccLim TRUE\AccMax:=maxAcceleration,TRUE\DecelMax:=maxDeceleration;
            MoveL Drawer6_Open30,v1000,fine,gripper\WObj:=wobj_Bushing;
            WaitTime(1);
            MoveL Offs(Drawer6_Open30,0,-15,0),v10,fine,gripper\WObj:=wobj_Bushing;
            PathAccLim FALSE,FALSE;

            MoveL Drawer6_Open40,v400,z10,gripper\WObj:=wobj_Bushing;
            MoveJ Offs(Bushing_Home,0,-TraySeparation*0,0),v600,z100,gripper\WObj:=wobj_Bushing;

            !Set the index for this drawer to 0 so that the robot forgets where it left off in the tray
            tray6Index:=0;
        ENDIF
    ENDPROC

    FUNC bool checkEndPos()
        VAR bool endBushingFilled:=FALSE;
        Release;
        !Make sure this is a 400 size part
        IF partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18
        THEN
            !Motions to pick up bushings, if the drawers are changed, these rob targets will need changed manually
            IF currentDrawer_400=1
            THEN
                !Code below allows the X and Y axis variables to be set to allow columns (14 total) and rows (10 total) to sequence
                !Movement is front to back, and left to right, starting from the front left corner
                IF drawer1Tray2Active
                THEN
                    MoveL Offs(BP_Tray1_App20,13*tray1YOffset,tray1ZOffset_2+50,(-5)*tray1XOffset-tray1X2Offset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray1_Pick_Back,(-5)*tray1XOffset,13*tray1YOffset,tray1ZOffset_2-4),v400,fine,gripper\WObj:=wobj_Tray1_Back;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        MoveL Offs(BP_Tray1_Dep10,13*tray1YOffset,tray1ZOffset_2+50,(-5)*tray1XOffset-tray1X2Offset),v400,fine,gripper\WObj:=wobj_Bushing;
                        endBushingFilled:=TRUE;
                    ELSE
                        Release;
                        MoveL Offs(BP_Tray1_Dep10,13*tray1YOffset,tray1ZOffset_2+50,(-5)*tray1XOffset-tray1X2Offset),v400,fine,gripper\WObj:=wobj_Bushing;
                    ENDIF
                ELSE
                    MoveL Offs(BP_Tray1_App20,13*tray1YOffset,tray1ZOffset_1+100,(-9)*tray1XOffset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray1_Pick_Front,(-9)*tray1XOffset,(13)*tray1YOffset,tray1ZOffset_1),v400,fine,gripper\WObj:=wobj_Tray1_Front;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        MoveL Offs(BP_Tray1_Dep10,(13)*tray1YOffset,tray1ZOffset_1+100,(-9)*tray1XOffset),v400,fine,gripper\WObj:=wobj_Bushing;
                        endBushingFilled:=TRUE;
                    ELSE
                        Release;
                        MoveL Offs(BP_Tray1_Dep10,(13)*tray1YOffset,tray1ZOffset_1+100,(-9)*tray1XOffset),v400,fine,gripper\WObj:=wobj_Bushing;
                    ENDIF
                ENDIF
            ELSEIF currentDrawer_400=4
            THEN
                IF drawer4Tray2Active
                THEN
                    MoveL Offs(BP_Tray4_App20,(13)*tray4YOffset,tray4ZOffset_2,(-6)*tray4XOffset-tray4X2Offset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray4_Pick_Back,-(6)*tray4XOffset,(13)*tray4YOffset,tray4ZOffset_2),v400,fine,gripper\WObj:=wobj_Tray4_Back;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        MoveL Offs(BP_Tray4_Dep10,(13)*tray4YOffset,tray4ZOffset_2,(-6)*tray4XOffset-tray4X2Offset),v400,fine,gripper\WObj:=wobj_Bushing;
                        endBushingFilled:=TRUE;
                    ELSE
                        Release;
                        MoveL Offs(BP_Tray4_Dep10,(13)*tray4YOffset,tray4ZOffset_2,(-6)*tray4XOffset-tray4X2Offset),v400,fine,gripper\WObj:=wobj_Bushing;
                    ENDIF
                ELSE
                    MoveL Offs(BP_Tray4_App20,(13)*tray4YOffset,tray4ZOffset_1,(-9)*tray4XOffset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray4_Pick_Front,-(9)*tray4XOffset,(13)*tray4YOffset,tray4ZOffset_1),v400,fine,gripper\WObj:=wobj_Tray4_Front;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        MoveL Offs(BP_Tray4_Dep10,(13)*tray4YOffset,tray4ZOffset_1,(-9)*tray4XOffset),v400,fine,gripper\WObj:=wobj_Bushing;
                        endBushingFilled:=TRUE;
                    ELSE
                        Release;
                        MoveL Offs(BP_Tray4_Dep10,(13)*tray4YOffset,tray4ZOffset_1,(-9)*tray4XOffset),v400,fine,gripper\WObj:=wobj_Bushing;
                    ENDIF
                ENDIF
            ENDIF
        ENDIF

        !Make sure this is a 600 size part
        IF partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21
        THEN
            !Motions to pick up bushings, if the drawers are changed, these rob targets will need changed manually
            IF currentDrawer_600=2
            THEN
                !Code below allows the X and Y axis variables to be set to allow columns (14 total) and rows (9 total) to sequence
                !Movement is front to back, and left to right, starting from the front left corner
                IF drawer2Tray2Active
                THEN
                    MoveL Offs(BP_Tray2_App20,13*tray2YOffset,tray2ZOffset_2,-5*tray2XOffset-tray2X2Offset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray2_Pick_Back,13*tray2YOffset,-5*tray2XOffset,tray2ZOffset_2),v400,fine,gripper\WObj:=wobj_Tray2_Back;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        MoveL Offs(BP_Tray2_Dep10,13*tray2YOffset,tray2ZOffset_2,-5*tray2XOffset-tray2X2Offset),v400,fine,gripper\WObj:=wobj_Bushing;
                        endBushingFilled:=TRUE;
                    ELSE
                        Release;
                        MoveL Offs(BP_Tray2_Dep10,13*tray2YOffset,tray2ZOffset_2,-5*tray2XOffset-tray2X2Offset),v400,fine,gripper\WObj:=wobj_Bushing;
                    ENDIF
                ELSE
                    MoveL Offs(BP_Tray2_App20,13*tray2YOffset,tray2ZOffset_1,-8*tray2XOffset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray2_Pick_Front,(13)*tray2YOffset,-8*tray2XOffset,tray2ZOffset_1),v400,fine,gripper\WObj:=wobj_Tray2_Front;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        MoveL Offs(BP_Tray2_Dep10,(13)*tray2YOffset,tray2ZOffset_1,(-8)*tray2XOffset),v400,fine,gripper\WObj:=wobj_Bushing;
                        endBushingFilled:=TRUE;
                    ELSE
                        Release;
                        MoveL Offs(BP_tray2_Dep10,(13)*tray2YOffset,tray2ZOffset_1,(-8)*tray2XOffset),v400,fine,gripper\WObj:=wobj_Bushing;
                    ENDIF
                ENDIF
            ELSEIF currentDrawer_600=5
            THEN
                IF drawer5Tray2Active
                THEN
                    MoveL Offs(BP_Tray5_App20,(13)*tray5YOffset,tray5ZOffset_2,(-5)*tray5XOffset-tray5X2Offset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray5_Pick_Back,(-5)*tray5XOffset,(13)*tray5YOffset,tray5ZOffset_2),v400,fine,gripper\WObj:=wobj_Tray5_Back;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        MoveL Offs(BP_tray5_Dep10,(13)*tray5YOffset,tray5ZOffset_2,(-5)*tray5XOffset-tray5X2Offset),v400,fine,gripper\WObj:=wobj_Bushing;
                        endBushingFilled:=TRUE;
                    ELSE
                        Release;
                        MoveL Offs(BP_tray5_Dep10,(13)*tray5YOffset,tray5ZOffset_2,(-5)*tray5XOffset-tray5X2Offset),v400,fine,gripper\WObj:=wobj_Bushing;
                    ENDIF
                ELSE
                    MoveL Offs(BP_tray5_App20,(13)*tray5YOffset,tray5ZOffset_1,(-8)*tray5XOffset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_tray5_Pick_Front,(-8)*tray5XOffset,(13)*tray5YOffset,tray5ZOffset_1),v400,fine,gripper\WObj:=wobj_Tray5_Front;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        MoveL Offs(BP_tray5_Dep10,(13)*tray5YOffset,tray5ZOffset_1,(-8)*tray5XOffset),v400,fine,gripper\WObj:=wobj_Bushing;
                        endBushingFilled:=TRUE;
                    ELSE
                        Release;
                        MoveL Offs(BP_tray5_Dep10,(13)*tray5YOffset,tray5ZOffset_1,(-8)*tray5XOffset),v400,fine,gripper\WObj:=wobj_Bushing;
                    ENDIF
                ENDIF
            ENDIF
        ENDIF

        !Make sure this is a 800 size part
        IF partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24
        THEN
            !Motions to pick up bushings, if the drawers are changed, these rob targets will need changed manually
            IF currentDrawer_800=3
            THEN
                !Code below allows the X and Y axis variables to be set to allow columns (12 total) and rows (8 total) to sequence
                !Movement is front to back, and left to right, starting from the front left corner
                IF drawer3tray2Active
                THEN
                    MoveL Offs(BP_Tray3_App20,11*tray3YOffset,tray3ZOffset_2,-4*tray3XOffset-tray3X2Offset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray3_Pick_Back,-4*tray3XOffset,11*tray3YOffset,tray3ZOffset_2),v400,fine,gripper\WObj:=wobj_Tray3_Back;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        MoveL Offs(BP_Tray3_Dep10,11*tray3YOffset,tray3ZOffset_2,-4*tray3XOffset-tray3X2Offset),v400,fine,gripper\WObj:=wobj_Bushing;
                        endBushingFilled:=TRUE;
                    ELSE
                        Release;
                        MoveL Offs(BP_Tray3_Dep10,11*tray3YOffset,tray3ZOffset_2,-4*tray3XOffset-tray3X2Offset),v400,fine,gripper\WObj:=wobj_Bushing;
                    ENDIF
                ELSE
                    MoveL Offs(BP_Tray3_App20,11*tray3YOffset,tray3ZOffset_1,-7*tray3XOffset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray3_Pick_Front,-(7)*tray3XOffset,(11)*tray3YOffset,tray3ZOffset_1),v400,fine,gripper\WObj:=wobj_Tray3_Front;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        MoveL Offs(BP_tray3_Dep10,(11)*tray3YOffset,tray3ZOffset_1,(-7)*tray3XOffset),v400,fine,gripper\WObj:=wobj_Bushing;
                        endBushingFilled:=TRUE;
                    ELSE
                        Release;
                        MoveL Offs(BP_Tray3_Dep10,(11)*tray3YOffset,tray3ZOffset_1,(-7)*tray3XOffset),v400,fine,gripper\WObj:=wobj_Bushing;
                    ENDIF
                ENDIF
            ELSEIF currentDrawer_800=6
            THEN
                IF drawer6tray2Active
                THEN
                    MoveL Offs(BP_Tray6_App20,(11)*tray6YOffset,tray6ZOffset_2,(-5)*tray6XOffset-tray6X2Offset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray6_Pick_Back,-(5)*tray6XOffset,(11)*tray6YOffset,tray6ZOffset_2),v400,fine,gripper\WObj:=wobj_Tray6_Back;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        MoveL Offs(BP_Tray6_Dep10,(11)*tray6YOffset,tray6ZOffset_2,(-5)*tray6XOffset-tray6X2Offset),v400,fine,gripper\WObj:=wobj_Bushing;
                        endBushingFilled:=TRUE;
                    ELSE
                        Release;
                        MoveL Offs(BP_tray6_Dep10,(11)*tray6YOffset,tray6ZOffset_2,(-5)*tray6XOffset-tray6X2Offset),v400,fine,gripper\WObj:=wobj_Bushing;
                    ENDIF
                ELSE
                    MoveL Offs(BP_Tray6_App20,(11)*tray6YOffset,tray6ZOffset_1,(-7)*tray6XOffset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray6_Pick_Front,-(7)*tray6XOffset-3,(11)*tray6YOffset,tray6ZOffset_1),v400,fine,gripper\WObj:=wobj_Tray6_Front;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        MoveL Offs(BP_Tray6_Dep10,(11)*tray6YOffset,tray6ZOffset_1,(-7)*tray6XOffset),v400,fine,gripper\WObj:=wobj_Bushing;
                        endBushingFilled:=TRUE;
                    ELSE
                        Release;
                        MoveL Offs(BP_Tray6_Dep10,(11)*tray6YOffset,tray6ZOffset_1,(-7)*tray6XOffset),v400,fine,gripper\WObj:=wobj_Bushing;
                    ENDIF
                ENDIF
            ENDIF
        ENDIF

        !Return true or false depending on the result
        RETURN endBushingFilled;
    ENDFUNC

    FUNC num updateValidTargetPoint(num index)
        VAR bool needRetry:=FALSE;
        VAR num temp:=0;
        VAR num currentDrawer:=0;
        VAR bool foundBushing:=FALSE;

        runCalcAgain:
        needRetry:=FALSE;

        !The first thing that could be wrong is the start index is larger than the end index (just switch trays)
        IF index>endIndex
        THEN
            RETURN -1;
        ENDIF

        !Check for bushing size
        IF partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18
        THEN
            IF currentDrawer_400=1
                THEN
                currentDrawer:=1;
            ELSEIF currentDrawer_400=4
                THEN
                currentDrawer:=4;
            ENDIF
        ELSEIF partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21
        THEN
            IF currentDrawer_600=2
            THEN
                currentDrawer:=2;
            ELSEIF currentDrawer_600=5
            THEN
                currentDrawer:=5;
            ENDIF
        ELSEIF partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24
        THEN
            IF currentDrawer_800=3
            THEN
                currentDrawer:=3;
            ELSEIF currentDrawer_800=6
            THEN
                currentDrawer:=6;
            ENDIF
        ENDIF

        temp:=getTempPositionVar(currentDrawer);
        getColRowMerge currentDrawer,temp,index;

        !Block out certain rows because the gripper will hit the cabinet based on the following rules
        !ONLY BLOCK OUT ROWS AND COLS FOR THE SECOND TRAY IN THE DRAWER
        !400 Size Bushing Max Row = 6 && Min Col = 1
        !600 Size Bushing Max Row = 4 && Min Col = 2
        !800 Size Bushing Max Row = && Min Col = 
        IF currentDrawer=currentDrawer_400
        THEN
            IF currentRow_Merge>7
            THEN
                needRetry:=TRUE;
            ELSEIF currentCol_Merge<1
            THEN
                needRetry:=TRUE;
            ENDIF
        ELSEIF currentDrawer=currentDrawer_600
        THEN
            IF currentRow_Merge>6
            THEN
                needRetry:=TRUE;
            ELSEIF currentCol_Merge<1
            THEN
                needRetry:=TRUE;
            ENDIF
        ELSEIF currentDrawer=currentDrawer_800
        THEN
            IF currentRow_Merge>6
            THEN
                needRetry:=TRUE;
            ELSEIF currentCol_Merge<1
            THEN
                needRetry:=TRUE;
            ENDIF
        ENDIF

        needRetry:=updateNeedRetry(currentDrawer,needRetry);

        IF needRetry
        THEN
            index:=index+1;
            GOTO runCalcAgain;
        ENDIF

        RETURN index;
    ENDFUNC

    PROC mergeSortTray()
        VAR num targetPoint:=0;
        dropCycleCount:=TRUE;
        Release;
        targetPoint:=startIndex+Round((endIndex-startIndex)/2);
        !Check if the target point calculated is a valid location, if not set it to the next valid spot
        targetPoint:=updateValidTargetPoint(targetPoint);
        IF targetPoint=-1
        THEN
            !Break out since we know the end index has a bushing we can just use that as the final target point
            IF partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18
            THEN
                IF currentDrawer_400=1
                THEN
                    tray1Index:=-1;
                    !SwitchTrayCount:=SwitchTrayCount+1;
                ELSEIF currentDrawer_400=4
                THEN
                    tray4Index:=-1;
                    !SwitchTrayCount:=SwitchTrayCount+1;
                ENDIF
            ELSEIF partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21
            THEN
                IF currentDrawer_600=2
                THEN
                    tray2Index:=-1;
                    !SwitchTrayCount:=SwitchTrayCount+1;
                ELSEIF currentDrawer_600=5
                THEN
                    tray5Index:=-1;
                    !SwitchTrayCount:=SwitchTrayCount+1;
                ENDIF
            ELSEIF partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24
            THEN
                IF currentDrawer_800=3
                THEN
                    tray3Index:=-1;
                    !SwitchTrayCount:=SwitchTrayCount+1;
                ELSEIF currentDrawer_800=6
                THEN
                    tray6Index:=-1;
                    !SwitchTrayCount:=SwitchTrayCount+1;
                ENDIF
            ENDIF
            GOTO ExitThisLoop;
        ENDIF

        IF targetPoint=endIndex
        THEN
            !Break out since we know the end index has a bushing we can just use that as the final target point
            IF partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18
            THEN
                IF currentDrawer_400=1
                THEN
                    tray1Index:=endIndex;
                ELSEIF currentDrawer_400=4
                THEN
                    tray4Index:=endIndex;
                ENDIF
            ELSEIF partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21
            THEN
                IF currentDrawer_600=2
                THEN
                    tray2Index:=endIndex;
                ELSEIF currentDrawer_600=5
                THEN
                    tray5Index:=endIndex;
                ENDIF
            ELSEIF partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24
            THEN
                IF currentDrawer_800=3
                THEN
                    tray3Index:=endIndex;
                ELSEIF currentDrawer_800=6
                THEN
                    tray6Index:=endIndex;
                ENDIF
            ENDIF
        ELSE
            !The target was valid so run the check and call merge sort again
            IF checkPosition(targetPoint)
            THEN
                !There was a bushing there so call merge sort on left half
                endIndex:=targetPoint;
                mergeSortTray;
            ELSE
                !There was no bushing there so call merge sort on right half
                startIndex:=targetPoint;
                mergeSortTray;
            ENDIF
        ENDIF
        ExitThisLoop:
    ENDPROC

    FUNC bool checkPosition(VAR num index)
        VAR bool needRetry:=FALSE;
        VAR num temp:=0;
        VAR num currentDrawer:=0;
        VAR bool foundBushing:=FALSE;

        runCalcAgain:

        !Check for bushing size
        IF partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18
            THEN
            IF currentDrawer_400=1
                THEN
                currentDrawer:=1;
            ELSEIF currentDrawer_400=4
                THEN
                currentDrawer:=4;
            ENDIF
        ELSEIF partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21
            THEN
            IF currentDrawer_600=2
            THEN
                currentDrawer:=2;
            ELSEIF currentDrawer_600=5
            THEN
                currentDrawer:=5;
            ENDIF
        ELSEIF partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24
            THEN
            IF currentDrawer_800=3
            THEN
                currentDrawer:=3;
            ELSEIF currentDrawer_800=6
            THEN
                currentDrawer:=6;
            ENDIF
        ENDIF

        temp:=getTempPositionVar(currentDrawer);
        getColRowMerge currentDrawer,temp,index;

        !Block out certain rows because the gripper will hit the cabinet based on the following rules
        !ONLY BLOCK OUT ROWS AND COLS FOR THE SECOND TRAY IN THE DRAWER
        !400 Size Bushing Max Row = 6 && Min Col = 1
        !600 Size Bushing Max Row = 4 && Min Col = 2
        !800 Size Bushing Max Row = && Min Col = 
        IF currentDrawer=currentDrawer_400
        THEN
            IF currentRow_Merge>7
            THEN
                needRetry:=TRUE;
            ELSEIF currentCol_Merge<1
            THEN
                needRetry:=TRUE;
            ENDIF
        ELSEIF currentDrawer=currentDrawer_600
        THEN
            IF currentRow_Merge>6
            THEN
                needRetry:=TRUE;
            ELSEIF currentCol_Merge<1
            THEN
                needRetry:=TRUE;
            ENDIF
        ELSEIF currentDrawer=currentDrawer_800
        THEN
            IF currentRow_Merge>6
            THEN
                needRetry:=TRUE;
            ELSEIF currentCol_Merge<1
            THEN
                needRetry:=TRUE;
            ENDIF
        ENDIF

        needRetry:=updateNeedRetry(currentDrawer,needRetry);

        IF needRetry
        THEN
            index:=index+1;
            GOTO runCalcAgain;
        ENDIF


        !Now that row and column have been decided run the robot to that position and check to get a true / false value at that index
        IF partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18
        THEN
            IF currentDrawer_400=1
            THEN
                IF drawer1Tray2Active
                THEN
                    MoveL Offs(BP_Tray1_App20,(currentCol_Merge)*tray1YOffset,tray1ZOffset_2+100,-(currentRow_Merge-1)*tray1XOffset-tray1X2Offset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray1_Pick_Back,-(currentRow_Merge-1)*tray1XOffset,(currentCol_Merge)*tray1YOffset,tray1ZOffset_2),v400,fine,gripper\WObj:=wobj_Tray1_Back;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        foundBushing:=TRUE;
                    ENDIF
                    MoveL Offs(BP_Tray1_Dep10,(currentCol_Merge)*tray1YOffset,tray1ZOffset_2+100,-(currentRow_Merge-1)*tray1XOffset-tray1X2Offset),v400,fine,gripper\WObj:=wobj_Bushing;
                ELSE
                    MoveL Offs(BP_Tray1_App20,(currentCol_Merge)*tray1YOffset,tray1ZOffset_1+100,-(currentRow_Merge-1)*tray1XOffset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray1_Pick_Front,-(currentRow_Merge-1)*tray1XOffset,(currentCol_Merge)*tray1YOffset,tray1ZOffset_1),v400,fine,gripper\WObj:=wobj_Tray1_Front;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        foundBushing:=TRUE;
                    ENDIF
                    MoveL Offs(BP_Tray1_Dep10,(currentCol_Merge)*tray1YOffset,tray1ZOffset_1+100,-(currentRow_Merge-1)*tray1XOffset),v400,fine,gripper\WObj:=wobj_Bushing;
                ENDIF

            ELSEIF currentDrawer_400=4
            THEN
                !Code below allows the X and Y axis variables to be set to allow columns (14 total) and rows (10 total) to sequence
                !Movement is front to back, and left to right, starting from the front left corner
                MoveJ BP_Tray4_App10,v600,z10,gripper\WObj:=wobj_Bushing;
                IF drawer4Tray2Active
                THEN
                    MoveL Offs(BP_Tray4_App20,(currentCol_Merge)*tray4YOffset,tray4ZOffset_2,-(currentRow_Merge-1)*tray4XOffset-tray4X2Offset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray4_Pick_Back,-(currentRow_Merge-1)*tray4XOffset,(currentCol_Merge)*tray4YOffset,tray4ZOffset_2),v400,fine,gripper\WObj:=wobj_Tray4_Back;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        foundBushing:=TRUE;
                    ENDIF
                    MoveL Offs(BP_Tray4_Dep10,(currentCol_Merge)*tray4YOffset,tray4ZOffset_2,-(currentRow_Merge-1)*tray4XOffset-tray4X2Offset),v400,fine,gripper\WObj:=wobj_Bushing;
                ELSE
                    MoveL Offs(BP_Tray4_App20,(currentCol_Merge)*tray4YOffset,tray4ZOffset_1,-(currentRow_Merge-1)*tray4XOffset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray4_Pick_Front,-(currentRow_Merge-1)*tray4XOffset,(currentCol_Merge)*tray4YOffset,tray4ZOffset_1),v400,fine,gripper\WObj:=wobj_Tray4_Front;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        foundBushing:=TRUE;
                    ENDIF
                    MoveL Offs(BP_Tray4_Dep10,(currentCol_Merge)*tray4YOffset,tray4ZOffset_1,-(currentRow_Merge-1)*tray4XOffset),v400,fine,gripper\WObj:=wobj_Bushing;
                ENDIF
            ENDIF
        ENDIF

        IF partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21
        THEN
            IF currentDrawer_600=2
            THEN
                IF drawer2Tray2Active
                THEN
                    MoveL Offs(BP_Tray2_App20,(currentCol_Merge)*tray2YOffset,tray2ZOffset_2,-(currentRow_Merge-1)*tray2XOffset-tray2X2Offset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray2_Pick_Back,(currentCol_Merge)*tray2YOffset,-(currentRow_Merge-1)*tray2XOffset,tray2ZOffset_2),v400,fine,gripper\WObj:=wobj_Tray2_Back;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        foundBushing:=TRUE;
                    ENDIF
                    MoveL Offs(BP_Tray2_Dep10,(currentCol_Merge)*tray2YOffset,tray2ZOffset_2,-(currentRow_Merge-1)*tray2XOffset-tray2X2Offset),v400,fine,gripper\WObj:=wobj_Bushing;
                ELSE
                    MoveJ Offs(BP_Tray2_App20,(currentCol_Merge)*tray2YOffset,tray2ZOffset_1,-(currentRow_Merge-1)*tray2XOffset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray2_Pick_Front,(currentCol_Merge)*tray2YOffset,-(currentRow_Merge-1)*tray2XOffset,tray2ZOffset_1),v400,fine,gripper\WObj:=wobj_Tray2_Front;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        foundBushing:=TRUE;
                    ENDIF
                    MoveL Offs(BP_Tray2_Dep10,(currentCol_Merge)*tray2YOffset,tray2ZOffset_1,-(currentRow_Merge-1)*tray2XOffset),v400,fine,gripper\WObj:=wobj_Bushing;
                ENDIF

            ELSEIF currentDrawer_600=5
            THEN
                !Code below allows the X and Y axis variables to be set to allow columns (14 total) and rows (10 total) to sequence
                !Movement is front to back, and left to right, starting from the front left corner
                MoveJ BP_Tray5_App10,v600,z10,gripper\WObj:=wobj_Bushing;
                IF drawer5Tray2Active
                THEN
                    MoveL Offs(BP_Tray5_App20,(currentCol_Merge)*tray5YOffset,tray5ZOffset_2,-(currentRow_Merge-1)*tray5XOffset-tray5X2Offset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray5_Pick_Back,-(currentRow_Merge-1)*tray5XOffset,(currentCol_Merge)*tray5YOffset,tray5ZOffset_2),v400,fine,gripper\WObj:=wobj_Tray5_Back;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        foundBushing:=TRUE;
                    ENDIF
                    MoveL Offs(BP_Tray5_Dep10,(currentCol_Merge)*tray5YOffset,tray5ZOffset_2,-(currentRow_Merge-1)*tray5XOffset-tray5X2Offset),v400,fine,gripper\WObj:=wobj_Bushing;
                ELSE
                    MoveL Offs(BP_Tray5_App20,(currentCol_Merge)*tray5YOffset,tray5ZOffset_1,-(currentRow_Merge-1)*tray5XOffset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray5_Pick_Front,-(currentRow_Merge-1)*tray5XOffset,(currentCol_Merge)*tray5YOffset,tray5ZOffset_1),v400,fine,gripper\WObj:=wobj_Tray5_Front;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        foundBushing:=TRUE;
                    ENDIF
                    MoveL Offs(BP_Tray5_Dep10,(currentCol_Merge)*tray5YOffset,tray5ZOffset_1,-(currentRow_Merge-1)*tray5XOffset),v400,fine,gripper\WObj:=wobj_Bushing;
                ENDIF
            ENDIF
        ENDIF

        IF partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24
        THEN
            IF currentDrawer_800=3
            THEN
                IF drawer3Tray2Active
                THEN
                    MoveL Offs(BP_Tray3_App20,(currentCol_Merge)*tray3YOffset,tray3ZOffset_2,-(currentRow_Merge-1)*tray3XOffset-tray3X2Offset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray3_Pick_Back,-(currentRow_Merge-1)*tray3XOffset,(currentCol_Merge)*tray3YOffset,tray3ZOffset_2),v400,fine,gripper\WObj:=wobj_Tray3_Back;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        foundBushing:=TRUE;
                    ENDIF
                    MoveL Offs(BP_Tray3_Dep10,(currentCol_Merge)*tray3YOffset,tray3ZOffset_2,-(currentRow_Merge-1)*tray3XOffset-tray3X2Offset),v400,fine,gripper\WObj:=wobj_Bushing;
                ELSE
                    MoveL Offs(BP_Tray3_App20,(currentCol_Merge)*tray3YOffset,tray3ZOffset_1,-(currentRow_Merge-1)*tray3XOffset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray3_Pick_Front,-(currentRow_Merge-1)*tray3XOffset,(currentCol_Merge)*tray3YOffset,tray3ZOffset_1),v400,fine,gripper\WObj:=wobj_Tray3_Front;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        foundBushing:=TRUE;
                    ENDIF
                    MoveL Offs(BP_Tray3_Dep10,(currentCol_Merge)*tray3YOffset,tray3ZOffset_1,-(currentRow_Merge-1)*tray3XOffset),v400,fine,gripper\WObj:=wobj_Bushing;
                ENDIF

            ELSEIF currentDrawer_800=6
            THEN
                !Code below allows the X and Y axis variables to be set to allow columns (14 total) and rows (10 total) to sequence
                !Movement is front to back, and left to right, starting from the front left corner
                MoveJ BP_Tray6_App10,v600,z10,gripper\WObj:=wobj_Bushing;
                IF drawer6Tray2Active
                THEN
                    MoveL Offs(BP_Tray6_App20,(currentCol_Merge)*tray6YOffset,tray6ZOffset_2,-(currentRow_Merge-1)*tray6XOffset-tray6X2Offset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray6_Pick_Back,-(currentRow_Merge-1)*tray6XOffset,(currentCol_Merge)*tray6YOffset,tray6ZOffset_2),v400,fine,gripper\WObj:=wobj_Tray6_Back;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        foundBushing:=TRUE;
                    ENDIF
                    MoveL Offs(BP_Tray6_Dep10,(currentCol_Merge)*tray6YOffset,tray6ZOffset_2,-(currentRow_Merge-1)*tray6XOffset-tray6X2Offset),v400,fine,gripper\WObj:=wobj_Bushing;
                ELSE
                    MoveL Offs(BP_Tray6_App20,(currentCol_Merge)*tray6YOffset,tray6ZOffset_1,-(currentRow_Merge-1)*tray6XOffset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray6_Pick_Front,-(currentRow_Merge-1)*tray6XOffset,(currentCol_Merge)*tray6YOffset,tray6ZOffset_1),v400,fine,gripper\WObj:=wobj_Tray6_Front;
                    Grip;
                    WaitTime(2);
                    IF Gripper_BushingPresent=1
                    THEN
                        Release;
                        foundBushing:=TRUE;
                    ENDIF
                    MoveL Offs(BP_Tray6_Dep10,(currentCol_Merge)*tray6YOffset,tray6ZOffset_1,-(currentRow_Merge-1)*tray6XOffset),v400,fine,gripper\WObj:=wobj_Bushing;
                ENDIF
            ENDIF
        ENDIF

        RETURN foundBushing;
    ENDFUNC

    PROC Bushing_Pickup()
        VAR bool retryBushing:=FALSE;
        VAR num tempCol;
        VAR bool endBushingFilled:=FALSE;
        RetryPickup:
        WaitDI s9,1;
        !Wait for bushing cabinet door safety sensors to be initiated (Door closed)
        WaitDI s10,1;
        SetDO SolA_8,0;
        !Turn off 40PSI pressure for bodies
        SetDO SolA_4,1;
        !Turn of 20PSI pressure for bushings
        SetDO SolA_1,0;
        !Turn of 5PSI pressure for bushings
        SetDO SolA_2,0;
        !Turn of 10PSI pressure for bushings

        !Check if we should go to laser marker home first based on the conveyor belt we are leaving from
        IF lastPlacedBelt=1 AND retryBushing=FALSE
            THEN
            MoveJ Bushing_Path,v1500,z200,gripper\WObj:=wobj_Laser;
        ENDIF
        retryBushing:=FALSE;

        IF partNumber=11 OR partNumber=12 OR partNumber=17 OR partNumber=18
        THEN
            !400 BUSHING CURRENT DRAWER PARTS

            IF currentDrawer_400=1
            THEN
                MoveJ Offs(Bushing_Home,0,-TraySeparation*5,0),v1000,fine,gripper\WObj:=wobj_Bushing;
            ELSEIF currentDrawer_400=2
            THEN
                MoveJ Offs(Bushing_Home,0,-TraySeparation*4,0),v1000,fine,gripper\WObj:=wobj_Bushing;
            ELSEIF currentDrawer_400=3
            THEN
                MoveJ Offs(Bushing_Home,0,-TraySeparation*3,0),v1000,fine,gripper\WObj:=wobj_Bushing;
            ELSEIF currentDrawer_400=4
            THEN
                MoveJ Offs(Bushing_Home,0,-TraySeparation*2,0),v1000,fine,gripper\WObj:=wobj_Bushing;
            ELSEIF currentDrawer_400=5
            THEN
                MoveJ Offs(Bushing_Home,0,-TraySeparation*1,0),v1000,fine,gripper\WObj:=wobj_Bushing;
            ELSEIF currentDrawer_400=6
            THEN
                MoveJ Offs(Bushing_Home,0,-TraySeparation*0,0),v1000,fine,gripper\WObj:=wobj_Bushing;
            ENDIF

            !Get the current row and col number based on current tray
            GetCurrentPositionInfo(currentDrawer_400);
            Open_Drawer(currentDrawer_400);
            SetDO Gripper_Actuate,0;

            !Motions to pick up bushings, if the drawers are changed, these rob targets will need changed manually
            IF currentDrawer_400=1
            THEN
                !Code below allows the X and Y axis variables to be set to allow columns (14 total) and rows (10 total) to sequence
                !Movement is front to back, and left to right, starting from the front left corner
                MoveJ BP_Tray1_App10,v800,z20,gripper\WObj:=wobj_Bushing;
                IF drawer1Tray2Active
                THEN
                    MoveL Offs(BP_Tray1_App20,(currentCol)*tray1YOffset,tray1ZOffset_2+100,-(currentRow-1)*tray1XOffset-tray1X2Offset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray1_Pick_Back,-(currentRow-1)*tray1XOffset,(currentCol)*tray1YOffset,tray1ZOffset_2),v400,fine,gripper\WObj:=wobj_Tray1_Back;
                    Grip;
                    MoveL Offs(BP_Tray1_Dep10,(currentCol)*tray1YOffset,tray1ZOffset_2+100,-(currentRow-1)*tray1XOffset-tray1X2Offset),v400,fine,gripper\WObj:=wobj_Bushing;
                ELSE
                    MoveL Offs(BP_Tray1_App20,(currentCol)*tray1YOffset,tray1ZOffset_1+100,-(currentRow-1)*tray1XOffset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray1_Pick_Front,-(currentRow-1)*tray1XOffset,(currentCol)*tray1YOffset,tray1ZOffset_1),v400,fine,gripper\WObj:=wobj_Tray1_Front;
                    Grip;
                    MoveL Offs(BP_Tray1_Dep10,(currentCol)*tray1YOffset,tray1ZOffset_1+100,-(currentRow-1)*tray1XOffset),v400,fine,gripper\WObj:=wobj_Bushing;
                ENDIF

                IF Gripper_BushingPresent=1
                THEN
                    MoveL BP_Tray1_Dep20,v800,fine,gripper\WObj:=wobj_Bushing;
                ELSE
                    startIndex:=updateValidTargetPoint(tray1Index);
                    endIndex:=tray1MaxIndex;
                    endBushingFilled:=checkEndPos();
                    IF endBushingFilled=FALSE
                    THEN
                        SwitchTrayCount:=SwitchTrayCount+1;
                    ELSE
                        SwitchTrayCount:=0;
                    ENDIF
                    retryBushing:=TRUE;
                ENDIF

            ELSEIF currentDrawer_400=4
            THEN
                !Code below allows the X and Y axis variables to be set to allow columns (14 total) and rows (10 total) to sequence
                !Movement is front to back, and left to right, starting from the front left corner
                MoveJ BP_Tray4_App10,v600,z10,gripper\WObj:=wobj_Bushing;
                IF drawer4Tray2Active
                THEN
                    MoveL Offs(BP_Tray4_App20,(currentCol)*tray4YOffset,tray4ZOffset_2,-(currentRow-1)*tray4XOffset-tray4X2Offset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray4_Pick_Back,-(currentRow-1)*tray4XOffset,(currentCol)*tray4YOffset,tray4ZOffset_2),v400,fine,gripper\WObj:=wobj_Tray4_Back;
                    Grip;
                    MoveL Offs(BP_Tray4_Dep10,(currentCol)*tray4YOffset,tray4ZOffset_2,-(currentRow-1)*tray4XOffset-tray4X2Offset),v400,fine,gripper\WObj:=wobj_Bushing;
                ELSE
                    MoveL Offs(BP_Tray4_App20,(currentCol)*tray4YOffset,tray4ZOffset_1,-(currentRow-1)*tray4XOffset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray4_Pick_Front,-(currentRow-1)*tray4XOffset,(currentCol)*tray4YOffset,tray4ZOffset_1),v400,fine,gripper\WObj:=wobj_Tray4_Front;
                    Grip;
                    MoveL Offs(BP_Tray4_Dep10,(currentCol)*tray4YOffset,tray4ZOffset_1,-(currentRow-1)*tray4XOffset),v400,fine,gripper\WObj:=wobj_Bushing;
                ENDIF

                IF Gripper_BushingPresent=1
                THEN
                    MoveL BP_Tray4_Dep20,v800,fine,gripper\WObj:=wobj_Bushing;
                ELSE
                    startIndex:=updateValidTargetPoint(tray4Index);
                    endIndex:=tray4MaxIndex;
                    endBushingFilled:=checkEndPos();
                    IF endBushingFilled=FALSE
                    THEN
                        SwitchTrayCount:=SwitchTrayCount+1;
                    ELSE
                        SwitchTrayCount:=0;
                    ENDIF
                    retryBushing:=TRUE;
                ENDIF
            ENDIF

            !Incriment the current tray index to the next position
            IncrimentDrawerLocation(currentDrawer_400);

            SwitchTraysPickLocation:
            IF endBushingFilled
            THEN
                !We can do the merge sort algorithm
                mergeSortTray;
                !Tray index has been set so go to retrypickup
                endBushingFilled:=FALSE;
                retryBushing:=TRUE;
                IF (tray1Index=-1 OR tray4Index=-1)
                THEN
                    endBushingFilled:=FALSE;
                    retryBushing:=TRUE;
                    GOTO SwitchTraysPickLocation;
                ENDIF
                GOTO RetryPickup;
            ELSEIF retryBushing
            THEN
                !We should switch to the next tray or drawer
                IF currentDrawer_400=1 AND drawer1Tray2Active
                THEN
                    drawer1Tray2Active:=FALSE;
                    SwitchTrays(currentDrawer_400);
                ELSEIF currentDrawer_400=4 AND drawer4Tray2Active
                THEN
                    drawer4Tray2Active:=FALSE;
                    SwitchTrays(currentDrawer_400);
                ELSEIF currentDrawer_400=1
                THEN
                    drawer1Tray2Active:=TRUE;
                    Tray1Index:=0;
                ELSEIF currentDrawer_400=4
                THEN
                    drawer4Tray2Active:=TRUE;
                    Tray4Index:=0;
                ENDIF

                !If there are no bushings left at all we need to fail the part number and move on to the next part
                IF SwitchTrayCount<8
                THEN
                    IF SwitchTrayCount=4
                    THEN
                        !Call the operator
                        PulseDO\PLength:=3,Audible;
                    ENDIF
                    GOTO RetryPickup;
                ELSE
                    failedBushingFamilies{1}:=TRUE;
                    Close_All_Drawers(0);
                ENDIF
            ENDIF
        ELSEIF partNumber=13 OR partNumber=14 OR partNumber=20 OR partNumber=21
        THEN
            !600 BUSHING CURRENT DRAWER PARTS

            IF currentDrawer_600=1
            THEN
                MoveJ Offs(Bushing_Home,0,-TraySeparation*5,0),v1000,fine,gripper\WObj:=wobj_Bushing;
            ELSEIF currentDrawer_600=2
            THEN
                MoveJ Offs(Bushing_Home,0,-TraySeparation*4,0),v800,fine,gripper\WObj:=wobj_Bushing;
            ELSEIF currentDrawer_600=3
            THEN
                MoveJ Offs(Bushing_Home,0,-TraySeparation*3,0),v200,fine,gripper\WObj:=wobj_Bushing;
            ELSEIF currentDrawer_600=4
            THEN
                MoveJ Offs(Bushing_Home,0,-TraySeparation*2,0),v200,fine,gripper\WObj:=wobj_Bushing;
            ELSEIF currentDrawer_600=5
            THEN
                MoveJ Offs(Bushing_Home,0,-TraySeparation*1,0),v1000,z50,gripper\WObj:=wobj_Bushing;
            ELSEIF currentDrawer_600=6
            THEN
                MoveJ Offs(Bushing_Home,0,-TraySeparation*0,0),v200,fine,gripper\WObj:=wobj_Bushing;
            ENDIF

            !Get the current row and col number based on current tray
            GetCurrentPositionInfo(currentDrawer_600);
            Open_Drawer(currentDrawer_600);
            SetDO Gripper_Actuate,0;

            !Motions to pick up bushings, if the drawers are changed, these rob targets will need changed manually
            IF currentDrawer_600=2
            THEN
                !Code below allows the X and Y axis variables to be set to allow columns to sequence
                !Movement is front to back, and left to right, starting from the front left corner
                MoveJ BP_Tray2_App10,v600,z10,gripper\WObj:=wobj_Bushing;
                IF drawer2Tray2Active
                THEN
                    MoveJ Offs(BP_Tray2_App20,(currentCol)*tray2YOffset,tray2ZOffset_2,-(currentRow-1)*tray2XOffset-tray2X2Offset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray2_Pick_Back,(currentCol)*tray2YOffset,-(currentRow-1)*tray2XOffset,tray2ZOffset_2),v600,fine,gripper\WObj:=wobj_Tray2_Back;
                    Grip;
                    MoveJ Offs(BP_Tray2_Dep10,(currentCol)*tray2YOffset,tray2ZOffset_2,-(currentRow-1)*tray2XOffset-tray2X2Offset),v600,fine,gripper\WObj:=wobj_Bushing;
                ELSE
                    MoveJ Offs(BP_Tray2_App20,(currentCol)*tray2YOffset,tray2ZOffset_1,-(currentRow-1)*tray2XOffset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray2_Pick_Front,(currentCol)*tray2YOffset,-(currentRow-1)*tray2XOffset,tray2ZOffset_1),v600,fine,gripper\WObj:=wobj_Tray2_Front;
                    Grip;
                    MoveJ Offs(BP_Tray2_Dep10,(currentCol)*tray2YOffset,tray2ZOffset_1,-(currentRow-1)*tray2XOffset),v600,fine,gripper\WObj:=wobj_Bushing;
                ENDIF

                IF Gripper_BushingPresent=1
                THEN
                    MoveJ BP_Tray2_Dep20,v800,fine,gripper\WObj:=wobj_Bushing;
                ELSE
                    startIndex:=updateValidTargetPoint(tray2Index);
                    endIndex:=tray2MaxIndex;
                    endBushingFilled:=checkEndPos();
                    IF endBushingFilled=FALSE
                    THEN
                        SwitchTrayCount:=SwitchTrayCount+1;
                    ELSE
                        SwitchTrayCount:=0;
                    ENDIF
                    retryBushing:=TRUE;
                ENDIF

            ELSEIF currentDrawer_600=5
            THEN
                !Code below allows the X and Y axis variables to be set to allow columns (14 total) and rows (10 total) to sequence
                !Movement is front to back, and left to right, starting from the front left corner
                MoveJ BP_Tray5_App10,v600,z10,gripper\WObj:=wobj_Bushing;
                IF drawer5Tray2Active
                THEN
                    MoveL Offs(BP_Tray5_App20,(currentCol)*tray5YOffset,tray5ZOffset_2,-(currentRow-1)*tray5XOffset-tray5X2Offset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray5_Pick_Back,-(currentRow-1)*tray5XOffset,(currentCol)*tray5YOffset,tray5ZOffset_2),v600,fine,gripper\WObj:=wobj_Tray5_Back;
                    Grip;
                    MoveL Offs(BP_Tray5_Dep10,(currentCol)*tray5YOffset,tray5ZOffset_2,-(currentRow-1)*tray5XOffset-tray5X2Offset),v600,fine,gripper\WObj:=wobj_Bushing;
                ELSE
                    MoveL Offs(BP_Tray5_App20,(currentCol)*tray5YOffset,tray5ZOffset_1,-(currentRow-1)*tray5XOffset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray5_Pick_Front,-(currentRow-1)*tray5XOffset,(currentCol)*tray5YOffset,tray5ZOffset_1),v600,fine,gripper\WObj:=wobj_Tray5_Front;
                    Grip;
                    MoveL Offs(BP_Tray5_Dep10,(currentCol)*tray5YOffset,tray5ZOffset_1,-(currentRow-1)*tray5XOffset),v600,fine,gripper\WObj:=wobj_Bushing;
                ENDIF

                IF Gripper_BushingPresent=1
                THEN
                    MoveL BP_Tray5_Dep20,v800,fine,gripper\WObj:=wobj_Bushing;
                ELSE
                    startIndex:=updateValidTargetPoint(tray5Index);
                    endIndex:=tray5MaxIndex;
                    endBushingFilled:=checkEndPos();
                    IF endBushingFilled=FALSE
                    THEN
                        SwitchTrayCount:=SwitchTrayCount+1;
                    ELSE
                        SwitchTrayCount:=0;
                    ENDIF
                    retryBushing:=TRUE;
                ENDIF
            ENDIF

            !Incriment the current tray index to the next position
            IncrimentDrawerLocation(currentDrawer_600);

            SwitchTraysPickLocation1:
            IF endBushingFilled
            THEN
                !We can do the merge sort algorithm
                mergeSortTray;
                !Tray index has been set so go to retrypickup
                endBushingFilled:=FALSE;
                retryBushing:=TRUE;
                IF (tray2Index=-1 OR tray5Index=-1)
                THEN
                    endBushingFilled:=FALSE;
                    retryBushing:=TRUE;
                    GOTO SwitchTraysPickLocation1;
                ENDIF
                GOTO RetryPickup;
            ELSEIF retryBushing
            THEN
                !We should switch to the next tray or drawer
                IF currentDrawer_600=2 AND drawer2Tray2Active
                THEN
                    drawer2Tray2Active:=FALSE;
                    SwitchTrays(currentDrawer_600);
                ELSEIF currentDrawer_600=5 AND drawer5Tray2Active
                THEN
                    drawer5Tray2Active:=FALSE;
                    SwitchTrays(currentDrawer_600);
                ELSEIF currentDrawer_600=2
                THEN
                    drawer2Tray2Active:=TRUE;
                    Tray2Index:=0;
                ELSEIF currentDrawer_600=5
                THEN
                    drawer5Tray2Active:=TRUE;
                    Tray5Index:=0;
                ENDIF
                !If there are no bushings left at all we need to fail the part number and move on to the next part
                IF SwitchTrayCount<8
                THEN
                    IF SwitchTrayCount=4
                    THEN
                        !Call the operator
                        PulseDO\PLength:=3,Audible;
                    ENDIF
                    GOTO RetryPickup;
                ELSE
                    failedBushingFamilies{2}:=TRUE;
                    Close_All_Drawers(0);
                ENDIF
            ENDIF
        ELSEIF partNumber=15 OR partNumber=16 OR partNumber=23 OR partNumber=24
        THEN
            !800 BUSHING CURRENT DRAWER PARTS

            IF currentDrawer_800=1
            THEN
                MoveJ Offs(Bushing_Home,0,-TraySeparation*5,0),v1000,fine,gripper\WObj:=wobj_Bushing;
            ELSEIF currentDrawer_800=2
            THEN
                MoveJ Offs(Bushing_Home,0,-TraySeparation*4,0),V1000,fine,gripper\WObj:=wobj_Bushing;
            ELSEIF currentDrawer_800=3
            THEN
                MoveJ Offs(Bushing_Home,0,-TraySeparation*3,0),V1000,fine,gripper\WObj:=wobj_Bushing;
            ELSEIF currentDrawer_800=4
            THEN
                MoveJ Offs(Bushing_Home,0,-TraySeparation*2,0),V1000,fine,gripper\WObj:=wobj_Bushing;
            ELSEIF currentDrawer_800=5
            THEN
                MoveJ Offs(Bushing_Home,0,-TraySeparation*1,0),V1000,fine,gripper\WObj:=wobj_Bushing;
            ELSEIF currentDrawer_800=6
            THEN
                MoveJ Offs(Bushing_Home,0,-TraySeparation*0,0),V1000,fine,gripper\WObj:=wobj_Bushing;
            ENDIF

            !Get the current row and col number based on current tray
            GetCurrentPositionInfo(currentDrawer_800);
            Open_Drawer(currentDrawer_800);
            SetDO Gripper_Actuate,0;

            !Motions to pick up bushings, if the drawers are changed, these rob targets will need changed manually
            IF currentDrawer_800=3
            THEN
                !Code below allows the X and Y axis variables to be set to allow columns to sequence
                !Movement is front to back, and left to right, starting from the front left corner
                MoveJ BP_Tray3_App10,v800,z10,gripper\WObj:=wobj_Bushing;
                IF drawer3Tray2Active
                THEN
                    MoveL Offs(BP_Tray3_App20,(currentCol)*tray3YOffset,tray3ZOffset_2,-(currentRow-1)*tray3XOffset-tray3X2Offset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray3_Pick_Back,-(currentRow-1)*tray3XOffset,(currentCol)*tray3YOffset,tray3ZOffset_2),v800,fine,gripper\WObj:=wobj_Tray3_Back;
                    Grip;
                    MoveL Offs(BP_Tray3_Dep10,(currentCol)*tray3YOffset,tray3ZOffset_2,-(currentRow-1)*tray3XOffset-tray3X2Offset),v800,fine,gripper\WObj:=wobj_Bushing;
                ELSE
                    MoveL Offs(BP_Tray3_App20,(currentCol)*tray3YOffset,tray3ZOffset_1,-(currentRow-1)*tray3XOffset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray3_Pick_Front,-(currentRow-1)*tray3XOffset,(currentCol)*tray3YOffset,tray3ZOffset_1),v800,fine,gripper\WObj:=wobj_Tray3_Front;
                    Grip;
                    MoveL Offs(BP_Tray3_Dep10,(currentCol)*tray3YOffset,tray3ZOffset_1,-(currentRow-1)*tray3XOffset),v800,fine,gripper\WObj:=wobj_Bushing;
                ENDIF
                IF Gripper_BushingPresent=1
                THEN
                    MoveL BP_Tray3_Dep20,v800,fine,gripper\WObj:=wobj_Bushing;
                ELSE
                    startIndex:=updateValidTargetPoint(tray3Index);
                    endIndex:=tray3MaxIndex;
                    endBushingFilled:=checkEndPos();
                    IF endBushingFilled=FALSE
                    THEN
                        SwitchTrayCount:=SwitchTrayCount+1;
                    ELSE
                        SwitchTrayCount:=0;
                    ENDIF
                    retryBushing:=TRUE;
                ENDIF

            ELSEIF currentDrawer_800=6
            THEN
                !Code below allows the X and Y axis variables to be set to allow columns (14 total) and rows (10 total) to sequence
                !Movement is front to back, and left to right, starting from the front left corner
                MoveJ BP_Tray6_App10,v800,z10,gripper\WObj:=wobj_Bushing;
                IF drawer6Tray2Active
                THEN
                    MoveL Offs(BP_Tray6_App20,(currentCol)*tray6YOffset,tray6ZOffset_2,-(currentRow-1)*tray6XOffset-tray6X2Offset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray6_Pick_Back,-(currentRow-1)*tray6XOffset,(currentCol)*tray6YOffset,tray6ZOffset_2),v800,fine,gripper\WObj:=wobj_Tray6_Back;
                    Grip;
                    MoveL Offs(BP_Tray6_Dep10,(currentCol)*tray6YOffset,tray6ZOffset_2,-(currentRow-1)*tray6XOffset-tray6X2Offset),v800,fine,gripper\WObj:=wobj_Bushing;
                ELSE
                    MoveL Offs(BP_Tray6_App20,(currentCol)*tray6YOffset,tray6ZOffset_1,-(currentRow-1)*tray6XOffset),v800,z10,gripper\WObj:=wobj_Bushing;
                    MoveL Offs(BP_Tray6_Pick_Front,-(currentRow-1)*tray6XOffset,(currentCol)*tray6YOffset,tray6ZOffset_1),v800,fine,gripper\WObj:=wobj_Tray6_Front;
                    Grip;
                    MoveL Offs(BP_Tray6_Dep10,(currentCol)*tray6YOffset,tray6ZOffset_1,-(currentRow-1)*tray6XOffset),v800,fine,gripper\WObj:=wobj_Bushing;
                ENDIF

                IF Gripper_BushingPresent=1
                THEN
                    MoveL BP_Tray6_Dep20,v800,fine,gripper\WObj:=wobj_Bushing;
                ELSE
                    startIndex:=updateValidTargetPoint(tray6Index);
                    endIndex:=tray6MaxIndex;
                    endBushingFilled:=checkEndPos();
                    IF endBushingFilled=FALSE
                    THEN
                        SwitchTrayCount:=SwitchTrayCount+1;
                    ELSE
                        SwitchTrayCount:=0;
                    ENDIF
                    retryBushing:=TRUE;
                ENDIF
            ENDIF

            !Incriment the current tray index to the next position
            IncrimentDrawerLocation(currentDrawer_800);

            SwitchTraysPickLocation2:
            IF endBushingFilled
            THEN
                !We can do the merge sort algorithm
                mergeSortTray;
                !Tray index has been set so go to retrypickup
                endBushingFilled:=FALSE;
                retryBushing:=TRUE;
                IF (tray3Index=-1 OR tray6Index=-1)
                THEN
                    endBushingFilled:=FALSE;
                    retryBushing:=TRUE;
                    GOTO SwitchTraysPickLocation2;
                ENDIF
                GOTO RetryPickup;
            ELSEIF retryBushing
            THEN
                !We should switch to the next tray or drawer
                IF currentDrawer_800=3 AND drawer3Tray2Active
                THEN
                    drawer3Tray2Active:=FALSE;
                    SwitchTrays(currentDrawer_800);
                ELSEIF currentDrawer_800=6 AND drawer6Tray2Active
                THEN
                    drawer6Tray2Active:=FALSE;
                    SwitchTrays(currentDrawer_800);
                ELSEIF currentDrawer_800=3
                THEN
                    drawer3Tray2Active:=TRUE;
                    Tray3Index:=0;
                ELSEIF currentDrawer_800=6
                THEN
                    drawer6Tray2Active:=TRUE;
                    Tray6Index:=0;
                ENDIF
                !If there are no bushings left at all we need to fail the part number and move on to the next part
                IF SwitchTrayCount<8
                THEN
                    IF SwitchTrayCount=4
                    THEN
                        !Call the operator
                        PulseDO\PLength:=3,Audible;
                    ENDIF
                    GOTO RetryPickup;
                ELSE
                    failedBushingFamilies{3}:=TRUE;
                    Close_All_Drawers(0);
                ENDIF
            ENDIF
        ENDIF
    ENDPROC

    !This function assumes that only one drawer is open, only use it if you are certain that the other drawers could not be open so that robot does not crash
    PROC MoveToBushingHome()
        IF Bushing_Drawer_1=1
        THEN
            MoveJ Offs(Bushing_Home,0,-TraySeparation*5,0),V1000,fine,gripper\WObj:=wobj_Bushing;
        ELSEIF Bushing_Drawer_2=1
        THEN
            MoveJ Offs(Bushing_Home,0,-TraySeparation*4,0),V1000,fine,gripper\WObj:=wobj_Bushing;
        ELSEIF Bushing_Drawer_3=1
        THEN
            MoveJ Offs(Bushing_Home,0,-TraySeparation*3,0),V1000,fine,gripper\WObj:=wobj_Bushing;
        ELSEIF Bushing_Drawer_4=1
        THEN
            MoveJ Offs(Bushing_Home,0,-TraySeparation*2,0),V1000,fine,gripper\WObj:=wobj_Bushing;
        ELSEIF Bushing_Drawer_5=1
        THEN
            MoveJ Offs(Bushing_Home,0,-TraySeparation*1,0),V1000,fine,gripper\WObj:=wobj_Bushing;
        ELSEIF Bushing_DRawer_6=1
        THEN
            MoveJ Offs(Bushing_Home,0,-TraySeparation*0,0),V1000,fine,gripper\WObj:=wobj_Bushing;
        ELSE
            !Something is wrong so stop here
            UpdateTP("ERROR: Could not move to bushing home because no tray was open");
            PrintTP;
        ENDIF
    ENDPROC

    PROC BushingPickupPointAdjustment()
        VAR num selectedTest;
        VAR btnres responseSelection;
        CONST listitem testOptions{10}:=[["","1: Test Drawer 1 Locations"],["","2: Test Drawer 2 Locations"],["","3: Test Drawer 3 Locations"],
            ["","4: Test Drawer 4 Locations"],["","5: Test Drawer 5 Locations"],["","6: Test Drawer 6 Locations"],["","7: Pick all 400 bushings"],["","8: Pick all 600 bushings"],["","9: Pick all 800 bushings"],["","10: Custom Test (Requires code input)"]];
        !Put up a message about how this is a test feature only, make sure drawers are in expected position before running test
        ErrLog 4800,"Bush-Cab Test","This is a test feature for the bushing cabinet","Please run in manual mode only","Make sure bushing drawers are in safe / expected locations","Allows for rob target changing, may require manual offset update";

        WaitTime .5;

        !Once they accept the error message we can ask them which drawer's points they would like to test
        selectedTest:=UIListView(\Result:=responseSelection\Header:="Which test would you like to run?",testOptions\Buttons:=btnOKCancel\Icon:=iconInfo\DefaultIndex:=1);

        IF responseSelection=resOK
        THEN
            IF selectedTest=1
            THEN
                !Close all drawers and open the current one
                MoveJ Offs(Bushing_Home,0,-TraySeparation*5,0),v200,fine,gripper\WObj:=wobj_Bushing;
                Close_All_Drawers(0);
                MoveJ Offs(Bushing_Home,0,-TraySeparation*5,0),v200,fine,gripper\WObj:=wobj_Bushing;
                Open_Drawer(selectedTest);
                Release;

                !The Open_Drawer function leaves the robot at Bushing_Home
                !Begin test
                MoveJ BP_Tray1_App10,v100,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveL BP_Tray1_App20,v50,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveL BP_Tray1_Pick_Front,v50,fine,gripper\WObj:=wobj_Tray1_Front;
                Stop;
                Grip;
                Stop;
                MoveL BP_Tray1_Dep10,v50,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveJ BP_Tray1_Dep20,v100,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveJ Offs(Bushing_Home,0,-TraySeparation*5,0),v200,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                Release;
                !Adjust back tray
                Stop;
                MoveJ BP_Tray1_App10,v100,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveL BP_Tray1_App20,v50,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveL BP_Tray1_Pick_Back,v50,fine,gripper\WObj:=wobj_Tray1_Back;
                Stop;
                Grip;
                Stop;
                Release;
                Stop;
                MoveL BP_Tray1_App20,v50,fine,gripper\WObj:=wobj_Bushing;
                Stop;

                MoveJ BP_Tray1_App10,v100,fine,gripper\WObj:=wobj_Bushing;
                MoveL BP_Tray1_App20,v50,fine,gripper\WObj:=wobj_Bushing;
                MoveL BP_Tray1_Pick_Front,v50,fine,gripper\WObj:=wobj_Tray1_Front;
                Grip;
                MoveL BP_Tray1_Dep10,v50,fine,gripper\WObj:=wobj_Bushing;
                MoveJ BP_Tray1_Dep20,v100,fine,gripper\WObj:=wobj_Bushing;
                MoveJ Offs(Bushing_Home,0,-TraySeparation*5,0),v200,fine,gripper\WObj:=wobj_Bushing;
                Release;

                ErrLog 4800,"Test Completed","Please reset the robot and cell","Make sure to PP to main","","";
            ELSEIF selectedTest=2
            THEN
                !Close all drawers and open the current one
                MoveJ Offs(Bushing_Home,0,-TraySeparation*4,0),v200,fine,gripper\WObj:=wobj_Bushing;
                Close_All_Drawers(0);
                MoveJ Offs(Bushing_Home,0,-TraySeparation*4,0),v200,fine,gripper\WObj:=wobj_Bushing;
                Open_Drawer(selectedTest);
                Release;

                !The Open_Drawer function leaves the robot at Bushing_Home
                !Begin test
                MoveJ BP_Tray2_App10,v100,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveL BP_Tray2_App20,v50,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveL BP_Tray2_Pick_Front,v50,fine,gripper\WObj:=wobj_Tray2_Front;
                Stop;
                Grip;
                Stop;
                MoveL BP_Tray2_Dep10,v50,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveJ BP_Tray2_Dep20,v100,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveJ Offs(Bushing_Home,0,-TraySeparation*4,0),v200,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                Release;
                Stop;

                MoveJ BP_Tray2_App10,v100,fine,gripper\WObj:=wobj_Bushing;
                MoveL BP_Tray2_App20,v50,fine,gripper\WObj:=wobj_Bushing;
                MoveL BP_Tray2_Pick_Front,v50,fine,gripper\WObj:=wobj_Tray2_Front;
                Grip;
                MoveL BP_Tray2_Dep10,v50,fine,gripper\WObj:=wobj_Bushing;
                MoveJ BP_Tray2_Dep20,v100,fine,gripper\WObj:=wobj_Bushing;
                MoveJ Offs(Bushing_Home,0,-TraySeparation*4,0),v200,fine,gripper\WObj:=wobj_Bushing;
                Release;

                ErrLog 4800,"Test Completed","Please reset the robot and cell","Make sure to PP to main","","";
            ELSEIF selectedTest=3
            THEN
                !Close all drawers and open the current one
                MoveJ Offs(Bushing_Home,0,-TraySeparation*3,0),v200,fine,gripper\WObj:=wobj_Bushing;
                Close_All_Drawers(0);
                MoveJ Offs(Bushing_Home,0,-TraySeparation*3,0),v200,fine,gripper\WObj:=wobj_Bushing;
                Open_Drawer(selectedTest);
                Release;

                !The Open_Drawer function leaves the robot at Bushing_Home
                !Begin test
                MoveJ BP_Tray3_App10,v100,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveL BP_Tray3_App20,v50,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveL BP_Tray3_Pick_Front,v50,fine,gripper\WObj:=wobj_Tray3_Front;
                Stop;
                Grip;
                Stop;
                MoveL BP_Tray3_Dep10,v50,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveJ BP_Tray3_Dep20,v100,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveJ Offs(Bushing_Home,0,-TraySeparation*3,0),v200,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                Release;
                !Adjust back tray
                Stop;
                MoveJ BP_Tray3_App10,v100,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveL BP_Tray3_App20,v50,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveL BP_Tray3_Pick_Back,v50,fine,gripper\WObj:=wobj_Tray3_Back;
                Stop;
                Grip;
                Stop;
                Release;
                Stop;
                MoveL BP_Tray3_App20,v50,fine,gripper\WObj:=wobj_Bushing;
                Stop;

                MoveJ BP_Tray3_App10,v100,fine,gripper\WObj:=wobj_Bushing;
                MoveL BP_Tray3_App20,v50,fine,gripper\WObj:=wobj_Bushing;
                MoveL BP_Tray3_Pick_Front,v50,fine,gripper\WObj:=wobj_Tray3_Front;
                Grip;
                MoveL BP_Tray3_Dep10,v50,fine,gripper\WObj:=wobj_Bushing;
                MoveJ BP_Tray3_Dep20,v100,fine,gripper\WObj:=wobj_Bushing;
                MoveJ Offs(Bushing_Home,0,-TraySeparation*3,0),v200,fine,gripper\WObj:=wobj_Bushing;
                Release;

                ErrLog 4800,"Test Completed","Please reset the robot and cell","Make sure to PP to main","","";
            ELSEIF selectedTest=4
            THEN
                !Close all drawers and open the current one
                MoveJ Offs(Bushing_Home,0,-TraySeparation*2,0),v200,fine,gripper\WObj:=wobj_Bushing;
                Close_All_Drawers(0);
                MoveJ Offs(Bushing_Home,0,-TraySeparation*2,0),v200,fine,gripper\WObj:=wobj_Bushing;
                Open_Drawer(selectedTest);
                Release;

                !The Open_Drawer function leaves the robot at Bushing_Home
                !Begin test
                MoveJ BP_Tray4_App10,v100,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveL BP_Tray4_App20,v50,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveL BP_Tray4_Pick_Front,v50,fine,gripper\WObj:=wobj_Tray4_Front;
                Stop;
                Grip;
                Stop;
                MoveL BP_Tray4_Dep10,v50,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveJ BP_Tray4_Dep20,v100,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveJ Offs(Bushing_Home,0,-TraySeparation*2,0),v200,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                Release;
                !Adjust back tray
                Stop;
                MoveJ BP_Tray4_App10,v100,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveL BP_Tray4_App20,v50,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveL BP_Tray4_Pick_Back,v50,fine,gripper\WObj:=wobj_Tray4_Back;
                Stop;
                Grip;
                Stop;
                Release;
                Stop;
                MoveL BP_Tray4_App20,v50,fine,gripper\WObj:=wobj_Bushing;
                Stop;

                MoveJ BP_Tray4_App10,v100,fine,gripper\WObj:=wobj_Bushing;
                MoveL BP_Tray4_App20,v50,fine,gripper\WObj:=wobj_Bushing;
                MoveL BP_Tray4_Pick_Front,v50,fine,gripper\WObj:=wobj_Tray4_Front;
                Grip;
                MoveL BP_Tray4_Dep10,v50,fine,gripper\WObj:=wobj_Bushing;
                MoveJ BP_Tray4_Dep20,v100,fine,gripper\WObj:=wobj_Bushing;
                MoveJ Offs(Bushing_Home,0,-TraySeparation*2,0),v200,fine,gripper\WObj:=wobj_Bushing;
                Release;

                ErrLog 4800,"Test Completed","Please reset the robot and cell","Make sure to PP to main","","";
            ELSEIF selectedTest=5
            THEN
                !Close all drawers and open the current one                
                MoveJ Offs(Bushing_Home,0,-TraySeparation*1,0),v200,fine,gripper\WObj:=wobj_Bushing;
                Close_All_Drawers(0);
                MoveJ Offs(Bushing_Home,0,-TraySeparation*1,0),v200,fine,gripper\WObj:=wobj_Bushing;                
                Open_Drawer(selectedTest);
                Release;

                !The Open_Drawer function leaves the robot at Bushing_Home
                !Begin test
                MoveJ BP_Tray5_App10,v100,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveL BP_Tray5_App20,v50,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveL BP_Tray5_Pick_Front,v50,fine,gripper\WObj:=wobj_Tray5_Front;
                Stop;
                Grip;
                Stop;
                MoveL BP_Tray5_Dep10,v50,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveJ BP_Tray5_Dep20,v100,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveJ Offs(Bushing_Home,0,-TraySeparation*1,0),v200,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                Release;
                Stop;

                MoveJ BP_Tray5_App10,v100,fine,gripper\WObj:=wobj_Bushing;
                MoveL BP_Tray5_App20,v50,fine,gripper\WObj:=wobj_Bushing;
                MoveL BP_Tray5_Pick_Front,v50,fine,gripper\WObj:=wobj_Tray5_Front;
                Grip;
                MoveL BP_Tray5_Dep10,v50,fine,gripper\WObj:=wobj_Bushing;
                MoveJ BP_Tray5_Dep20,v100,fine,gripper\WObj:=wobj_Bushing;
                MoveJ Offs(Bushing_Home,0,-TraySeparation*1,0),v200,fine,gripper\WObj:=wobj_Bushing;
                Release;

                ErrLog 4800,"Test Completed","Please reset the robot and cell","Make sure to PP to main","","";
            ELSEIF selectedTest=6
            THEN
                !Close all drawers and open the current one
                MoveJ Bushing_Home,v200,fine,gripper\WObj:=wobj_Bushing;
                Close_All_Drawers(0);
                MoveJ Bushing_Home,v200,fine,gripper\WObj:=wobj_Bushing;
                Open_Drawer(selectedTest);
                Release;

                !The Open_Drawer function leaves the robot at Bushing_Home
                !Begin test
                MoveJ BP_Tray6_App10,v100,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveL BP_Tray6_App20,v50,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveL BP_Tray6_Pick_Front,v50,fine,gripper\WObj:=wobj_Tray6_Front;
                Stop;
                Grip;
                Stop;
                MoveL BP_Tray6_Dep10,v50,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveJ BP_Tray6_Dep20,v100,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveJ Bushing_Home,v200,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                Release;
                !Adjust back tray
                Stop;
                MoveJ BP_Tray6_App10,v100,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveL BP_Tray6_App20,v50,fine,gripper\WObj:=wobj_Bushing;
                Stop;
                MoveL BP_Tray6_Pick_Back,v50,fine,gripper\WObj:=wobj_Tray6_Back;
                Stop;
                Grip;
                Stop;
                Release;
                Stop;
                MoveL BP_Tray6_App20,v50,fine,gripper\WObj:=wobj_Bushing;
                Stop;

                MoveJ BP_Tray6_App10,v100,fine,gripper\WObj:=wobj_Bushing;
                MoveL BP_Tray6_App20,v50,fine,gripper\WObj:=wobj_Bushing;
                MoveL BP_Tray6_Pick_Front,v50,fine,gripper\WObj:=wobj_Tray6_Front;
                Grip;
                MoveL BP_Tray6_Dep10,v50,fine,gripper\WObj:=wobj_Bushing;
                MoveJ BP_Tray6_Dep20,v100,fine,gripper\WObj:=wobj_Bushing;
                MoveJ Bushing_Home,v200,fine,gripper\WObj:=wobj_Bushing;
                Release;

                ErrLog 4800,"Test Completed","Please reset the robot and cell","Make sure to PP to main","","";
            ELSEIF selectedTest=7 OR selectedTest=8 OR selectedTest=9
            THEN
                IF selectedTest=7
                THEN
                    partNumber:=11;
                ELSEIF selectedTest=8
                THEN
                    partNumber:=13;
                ELSEIF selectedTest=9
                THEN
                    partNumber:=15;
                ENDIF

                tray1Index:=0;
                tray2Index:=0;
                tray3Index:=0;
                tray4Index:=0;
                tray5Index:=0;
                tray6Index:=0;
                drawer1Tray2Active:=FALSE;
                drawer2Tray2Active:=FALSE;
                drawer3Tray2Active:=FALSE;
                drawer4Tray2Active:=FALSE;
                drawer5Tray2Active:=FALSE;
                drawer6Tray2Active:=FALSE;

                currentDrawer_400:=1;
                currentDrawer_600:=5;
                currentDrawer_800:=6;

                !For Loop that iterates for both drawers of parts which is 140*4=560 (Plus a few extra)
                FOR i FROM 1 TO 570 DO
                    Bushing_Pickup;
                    !Move to current home location to drop bushing
                    MoveToBushingHome;
                    Release;

                    !Incriment the bushing part counter
                    IF partNumber=11
                    THEN
                        IncrimentDrawerLocation(currentDrawer_400);
                    ELSEIF partNumber=13
                    THEN
                        IncrimentDrawerLocation(currentDrawer_600);
                    ELSEIF partNumber=15
                    THEN
                        IncrimentDrawerLocation(currentDrawer_800);
                    ENDIF
                ENDFOR
            ELSEIF selectedTest=10
            THEN
                !Put your own custom code here to test something not covered above

            ENDIF
        ENDIF
    ENDPROC
ENDMODULE