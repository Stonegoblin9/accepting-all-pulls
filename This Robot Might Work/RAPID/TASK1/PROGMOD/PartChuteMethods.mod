MODULE PartChuteMethods
    !PART CHUTE (PC)
    CONST robtarget PC_Home_Check:=[[-17.68,9.67,18.82],[0.497465,0.506925,-0.49253,-0.502961],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_Home:=[[-370.83,306.08,-316.89],[0.492965,-0.502953,0.503089,-0.500925],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9C600S_App10:=[[-90.04,127.98,-10.88],[0.492918,-0.503066,0.503025,-0.500921],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9C600S_Pick:=[[-45.36,125.55,-10.97],[0.492888,-0.503054,0.503061,-0.500926],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9C600S_Dep10:=[[-45.42,125.31,-67.96],[0.492889,-0.50306,0.503053,-0.500927],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_C600S_App10:=[[-89.70,224.49,-10.98],[0.49296,-0.503059,0.503026,-0.500886],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_C600S_Pick:=[[-45.60,222.52,-11.81],[0.493006,-0.503109,0.502927,-0.500891],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_C600S_Dep10:=[[-45.14,221.58,-92.76],[0.492945,-0.503049,0.503059,-0.500878],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_C400B_App10:=[[-89.34,320.09,-9.64],[0.49288,-0.503065,0.503054,-0.500931],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_C400B_Pick:=[[-44.64,317.36,-9.68],[0.492888,-0.503057,0.503056,-0.500928],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_C400B_Dep10:=[[-44.70,315.95,-68.18],[0.492913,-0.503038,0.503076,-0.500904],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9C400S_App10:=[[-89.00,413.18,-9.74],[0.492881,-0.503066,0.503052,-0.50093],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9C400S_Pick:=[[-45.13,410.93,-9.75],[0.492927,-0.503041,0.503059,-0.500903],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9C400S_Dep10:=[[-45.23,412.94,-68.27],[0.49288,-0.503059,0.503051,-0.50094],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_C400S_App10:=[[-88.67,506.33,-11.91],[0.492882,-0.50307,0.50305,-0.500928],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_C400S_Pick:=[[-43.86,504.72,-11.95],[0.492932,-0.503035,0.50307,-0.500893],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_C400S_Dep10:=[[-44.96,506.09,-79.78],[0.492884,-0.50306,0.503048,-0.500938],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_C600B_App10:=[[-137.05,504.70,107.74],[0.492934,-0.502946,0.503216,-0.500834],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_C600B_Pick:=[[-86.28,503.21,107.63],[0.492929,-0.502993,0.503206,-0.500803],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_C600B_Dep10:=[[-86.34,502.35,47.57],[0.492991,-0.502966,0.503237,-0.500737],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_C800S_App10:=[[-143.14,399.44,104.76],[0.492936,-0.502966,0.503165,-0.500863],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_C800S_Pick:=[[-85.90,398.16,104.68],[0.492986,-0.503006,0.503149,-0.50079],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_C800S_Dep10:=[[-85.97,399.20,47.68],[0.492962,-0.50301,0.503155,-0.500804],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9C800S_App10:=[[-143.53,285.62,104.82],[0.492993,-0.503035,0.503125,-0.50078],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9C800S_Pick:=[[-86.28,283.17,104.81],[0.492953,-0.503028,0.503142,-0.500808],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9C800S_Dep10:=[[-86.28,281.19,45.30],[0.49295,-0.503065,0.503166,-0.500749],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_C800B_App10:=[[-143.94,170.29,104.95],[0.493003,-0.503031,0.503165,-0.500733],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_C800B_Pick:=[[-86.16,167.49,103.52],[0.492914,-0.502988,0.503144,-0.500884],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_C800B_Dep10:=[[-86.74,167.21,45.44],[0.492976,-0.503045,0.503159,-0.50075],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_N600B_App10:=[[-160.71,67.32,107.10],[0.492892,-0.502841,0.503311,-0.500885],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_N600B_Pick:=[[-86.89,67.02,106.99],[0.492817,-0.502862,0.503324,-0.500926],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_N600B_Dep10:=[[-86.95,66.96,47.52],[0.492786,-0.502894,0.503281,-0.500966],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_N400S_App10:=[[-176.51,514.60,229.99],[0.492917,-0.502989,0.503095,-0.50093],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_N400S_Pick:=[[-117.30,513.68,229.91],[0.492893,-0.503027,0.503069,-0.500941],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_N400S_Dep10:=[[-117.37,512.79,175.18],[0.492844,-0.502977,0.503088,-0.50102],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9N400S_App10:=[[-176.81,438.70,230.11],[0.492893,-0.502976,0.503084,-0.500977],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9N400S_Pick:=[[-117.10,436.14,230.00],[0.492831,-0.502929,0.503139,-0.501029],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9N400S_Dep10:=[[-117.12,433.74,165.70],[0.492782,-0.502905,0.503157,-0.501084],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_N600S_App10:=[[-180.70,353.24,227.47],[0.492813,-0.502792,0.503178,-0.501146],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_N600S_Pick:=[[-116.86,352.12,227.37],[0.492885,-0.502875,0.503128,-0.501042],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_N600S_Dep10:=[[-116.87,350.09,165.00],[0.492789,-0.50284,0.503206,-0.501094],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9N600S_App10:=[[-180.89,262.01,227.54],[0.492891,-0.502795,0.5032,-0.501044],[1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9N600S_Pick:=[[-116.70,259.97,227.42],[0.492848,-0.502841,0.503205,-0.501035],[1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9N600S_Dep10:=[[-116.78,260.63,159.56],[0.492814,-0.502863,0.503184,-0.501068],[1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_N800S_App10:=[[-199.84,169.73,224.15],[0.492933,-0.502857,0.503143,-0.500998],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_N800S_Pick:=[[-116.66,167.26,224.05],[0.492889,-0.502881,0.503142,-0.501018],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_N800S_Dep10:=[[-116.71,166.51,162.72],[0.492897,-0.502898,0.503158,-0.500977],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9N800S_App10:=[[-214.57,505.80,342.81],[0.493093,-0.503064,0.502918,-0.500859],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9N800S_Pick:=[[-146.14,503.71,342.72],[0.493078,-0.503059,0.502932,-0.500864],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9N800S_Dep10:=[[-146.22,503.17,282.54],[0.493023,-0.503124,0.502846,-0.500939],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_F400S_App10:=[[-203.27,412.46,347.22],[0.493189,-0.503103,0.502785,-0.50086],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_F400S_Pick:=[[-146.29,410.58,347.14],[0.493212,-0.503106,0.502796,-0.500821],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_F400S_Dep10:=[[-146.38,412.17,287.00],[0.493158,-0.503087,0.502821,-0.500869],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9F400S_App10:=[[-211.30,319.97,347.35],[0.493152,-0.503063,0.502807,-0.500913],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9F400S_Pick:=[[-146.61,317.93,347.27],[0.493108,-0.503059,0.502825,-0.500942],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9F400S_Dep10:=[[-146.68,319.64,287.69],[0.493101,-0.503069,0.502832,-0.500932],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_F400B_App10:=[[-215.28,226.88,347.46],[0.493242,-0.503172,0.502705,-0.500817],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_F400B_Pick:=[[-146.39,224.28,347.35],[0.493247,-0.503174,0.502719,-0.500797],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_F400B_Dep10:=[[-146.45,223.36,286.15],[0.493221,-0.503197,0.502696,-0.500821],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_F600S_App10:=[[-215.03,132.34,344.52],[0.493073,-0.503154,0.502803,-0.500903],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_F600S_Pick:=[[-146.12,130.03,344.42],[0.49299,-0.503107,0.502833,-0.501003],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_F600S_Dep10:=[[-146.14,128.96,283.19],[0.493043,-0.503202,0.502751,-0.500936],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9F600S_App10:=[[-237.97,504.31,465.49],[0.493166,-0.503202,0.502664,-0.500903],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9F600S_Pick:=[[-179.96,502.96,465.40],[0.493149,-0.503235,0.502661,-0.50089],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9F600S_Dep10:=[[-180.02,501.79,403.30],[0.493172,-0.503223,0.502666,-0.500874],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_F600B_App10:=[[-222.18,408.38,465.21],[0.493163,-0.50314,0.502701,-0.50093],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_F600B_Pick:=[[-179.74,404.21,465.14],[0.493196,-0.503207,0.502682,-0.50085],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_F600B_Dep10:=[[-179.84,405.15,404.07],[0.493212,-0.503202,0.502675,-0.500847],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_F800S_App10:=[[-215.20,304.08,460.63],[0.492922,-0.50304,0.502941,-0.501027],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_F800S_Pick:=[[-180.11,299.49,460.60],[0.492932,-0.503081,0.502903,-0.501016],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_F800S_Dep10:=[[-180.19,299.35,402.24],[0.492892,-0.502996,0.502964,-0.501078],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9F800S_App10:=[[-224.73,188.52,459.76],[0.492922,-0.503025,0.502896,-0.501089],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9F800S_Pick:=[[-179.82,186.43,459.71],[0.492936,-0.503059,0.502855,-0.501082],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_9F800S_Dep10:=[[-179.87,185.13,397.82],[0.492888,-0.503038,0.502893,-0.501112],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_F800B_App10:=[[-239.65,74.53,458.02],[0.49305,-0.503077,0.50278,-0.501026],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_F800B_Pick:=[[-179.90,72.42,457.09],[0.493007,-0.503078,0.502805,-0.501042],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_F800B_Dep10:=[[-180.75,71.34,399.10],[0.493015,-0.503065,0.502797,-0.501056],[1,2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_Row5_End:=[[-281.48,511.37,365.04],[0.492906,-0.50304,0.502832,-0.501154],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_Row5_Start:=[[-293.97,329.13,461.46],[0.492378,-0.504584,0.502073,-0.50088],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_Row4_End:=[[-233.90,540.23,248.03],[0.493118,-0.50307,0.502912,-0.500833],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_Row4_Start:=[[-286.36,328.95,342.41],[0.492363,-0.504574,0.502081,-0.500897],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_Row3_End:=[[-225.59,603.24,132.50],[0.492866,-0.502732,0.503214,-0.501118],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_Row3_Start:=[[-242.80,328.67,217.69],[0.492316,-0.504602,0.502094,-0.500903],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_Row1_End:=[[-180.55,518.48,-181.16],[0.492891,-0.503051,0.503055,-0.500933],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_Row2_End:=[[-189.67,504.86,15.23],[0.492979,-0.502951,0.503216,-0.500784],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_Row2_Start:=[[-264.82,329.91,97.40],[0.493063,-0.502901,0.503246,-0.500722],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PC_Row1_Start:=[[-264.95,329.77,-32.98],[0.493126,-0.502894,0.503278,-0.500635],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    PROC Chute()
        WaitTime 0.2;
        IF DInput(Gripper_Opened)=0
        THEN
            SetDO Gripper_Actuate,0;
            Waittime 0.2;
            IF DInput(Gripper_Opened)=0
            THEN
                UpdateTP("Pneumatics error on gripper");
                PrintTP;
                stacklights.blinkColorStatus.Red:=TRUE;
                !Call the operator
                PulseDO\PLength:=3,Audible;
                Stop;
                EXIT;
            ENDIF
        ENDIF

        !If we are skipping some important operations because the cognex snapp bushing program we need to make a few extra stops
        IF retryPress
        THEN
            PathAccLim TRUE\AccMax:=2.5,TRUE\DecelMax:=2.5;
            !Move to bushing home, then laser home, then chute home
            MoveJ LP_Home,vmax,z200,gripper\WObj:=wobj_Laser;
            MoveJ PC_Home,vmax,z200,gripper\WObj:=wobj_PartChute;
            PathAccLim FALSE,FALSE;
        ELSE
            PathAccLim TRUE\AccMax:=2.5,TRUE\DecelMax:=2.5;
            MoveJ PC_Home,vmax,z200,gripper\WObj:=wobj_PartChute;
            PathAccLim FALSE,FALSE;
        ENDIF
        retryPress:=FALSE;

        IF partNumber=1
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row1_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_C400S_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_C400S_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_1,0;
                WaitTime 0.2;
                MoveL PC_C400S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_C400S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row1_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_1,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_1,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_C400S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_C400S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row1_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_C400S_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row1_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF

        ELSEIF partNumber=2
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row1_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_9C400S_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_9C400S_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_2,0;
                WaitTime 0.2;
                MoveL PC_9C400S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_9C400S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row1_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_2,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_2,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_9C400S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_9C400S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row1_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_9C400S_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row1_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=3 OR partNumber=26 OR partNumber=27
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row1_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_C400B_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_C400B_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_3,0;
                WaitTime 0.2;
                MoveL PC_C400B_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_C400B_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row1_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_3,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_3,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_C400B_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_C400B_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row1_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_C400B_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row1_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=4
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row1_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_C600S_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_C600S_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_4,0;
                WaitTime 0.2;
                MoveL PC_C600S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_C600S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row1_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_4,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_4,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_C600S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_C600S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row1_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_C600S_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row1_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=5
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row1_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_9C600S_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_9C600S_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_5,0;
                WaitTime 0.2;
                MoveL PC_9C600S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_9C600S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row1_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_5,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_5,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_9C600S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_9C600S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row1_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_9C600S_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row1_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=6
        THEN
            MoveJ PC_Home,v1000,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row2_Start,v800,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_C600B_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_C600B_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_6,0;
                WaitTime 0.2;
                MoveL PC_C600B_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_C600B_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row2_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_6,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_6,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_C600B_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_C600B_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row2_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_C600B_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row2_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=7
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row2_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_C800S_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_C800S_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_7,0;
                WaitTime 0.2;
                MoveL PC_C800S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_C800S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row2_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_7,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_7,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_C800S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_C800S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row2_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_C800S_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row2_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=8
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row2_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_9C800S_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_9C800S_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_8,0;
                WaitTime 0.2;
                MoveL PC_9C800S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_9C800S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row2_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_8,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_8,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_9C800S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_9C800S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row2_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_9C800S_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row2_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=9
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row2_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_C800B_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_C800B_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_9,0;
                WaitTime 0.2;
                MoveL PC_C800B_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_C800B_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row2_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_9,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_9,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_C800B_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_C800B_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row2_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_C800B_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row2_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=10
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row2_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_N600B_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_N600B_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_10,0;
                WaitTime 0.2;
                MoveL PC_N600B_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_N600B_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row2_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_10,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_10,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_N600B_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_N600B_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row2_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_N600B_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row2_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=11
        THEN
            MoveJ PC_Home,v600,z100,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row3_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_N400S_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_N400S_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_11,0;
                WaitTime 0.2;
                MoveL PC_N400S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_N400S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row3_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_11,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_11,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_N400S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_N400S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row3_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_N400S_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row3_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=12
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row3_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_9N400S_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_9N400S_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_12,0;
                WaitTime 0.2;
                MoveL PC_9N400S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_9N400S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row3_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_12,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_12,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_9N400S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_9N400S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row3_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_9N400S_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row3_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=13
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row3_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_N600S_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_N600S_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_13,0;
                WaitTime 0.2;
                MoveL PC_N600S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_N600S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row3_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_13,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_13,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_N600S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_N600S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row3_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_N600S_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row3_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=14
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row3_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_9N600S_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_9N600S_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_14,0;
                WaitTime 0.2;
                MoveL PC_9N600S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_9N600S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row3_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_14,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_14,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_9N600S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_9N600S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row3_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_9N600S_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row3_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=15
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row3_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_N800S_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_N800S_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_15,0;
                WaitTime 0.2;
                MoveL PC_N800S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_N800S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row3_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_15,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_15,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_N800S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_N800S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row3_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_N800S_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row3_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=16
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row4_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_9N800S_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_9N800S_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_16,0;
                WaitTime 0.2;
                MoveL PC_9N800S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_9N800S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row4_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_16,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_16,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_9N800S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_9N800S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row4_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_9N800S_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row4_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=17
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row4_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_F400S_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_F400S_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_17,0;
                WaitTime 0.2;
                MoveL PC_F400S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_F400S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row4_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_17,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_17,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_F400S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_F400S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row4_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_F400S_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row4_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=18
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row4_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_9F400S_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_9F400S_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_18,0;
                WaitTime 0.2;
                MoveL PC_9F400S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_9F400S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row4_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_18,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_18,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_9F400S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_9F400S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row4_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_9F400S_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row4_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=19
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row4_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_F400B_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_F400B_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_19,0;
                WaitTime 0.2;
                MoveL PC_F400B_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_F400B_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row4_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_19,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_19,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_F400B_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_F400B_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row4_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_F400B_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row4_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=20
        THEN
            MoveJ PC_Home,v1500,z100,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row4_Start,v800,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_F600S_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_F600S_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_20,0;
                WaitTime 0.2;
                MoveL PC_F600S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_F600S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row4_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_20,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_20,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_F600S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_F600S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row4_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_F600S_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row4_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=21
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row5_Start,v1000,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_9F600S_App10,v1000,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_9F600S_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_21,0;
                WaitTime 0.2;
                MoveL PC_9F600S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_9F600S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row5_End,v800,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_21,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_21,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_9F600S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_9F600S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row5_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_9F600S_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row5_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=22
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row5_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_F600B_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_F600B_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_22,0;
                WaitTime 0.2;
                MoveL PC_F600B_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_F600B_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row5_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_22,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_22,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_F600B_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_F600B_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row5_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_F600B_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row5_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=23
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row5_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_F800S_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_F800S_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_23,0;
                WaitTime 0.2;
                MoveL PC_F800S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_F800S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row5_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_23,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_23,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_F800S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_F800S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row5_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_F800S_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row5_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=24
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row5_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_9F800S_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_9F800S_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_24,0;
                WaitTime 0.2;
                MoveL PC_9F800S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_9F800S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row5_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_24,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_24,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_9F800S_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_9F800S_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row5_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_9F800S_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row5_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ELSEIF partNumber=25
        THEN
            MoveJ PC_Home,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_Row5_Start,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveJ PC_F800B_App10,v600,z10,gripper\WObj:=wobj_PartChute;
            MoveL PC_F800B_Pick,v600,fine,gripper\WObj:=wobj_PartChute;
            WaitTime 0.2;
            IF DInput(Gripper_PartPresent)=1
            THEN
                SetDO Gripper_Actuate,1;
                SetDO Part_Chute_25,0;
                WaitTime 0.2;
                MoveL PC_F800B_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                MoveL PC_F800B_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                MoveJ PC_Row5_End,v600,z10,gripper\WObj:=wobj_PartChute;
            ELSE
                SetDO Part_Chute_25,1;
                !SetDO Stack_Light_B, 1;
                !WaitTime 240;
                IF DInput(Gripper_PartPresent)=1
                THEN
                    SetDO Gripper_Actuate,1;
                    SetDO Part_Chute_25,0;
                    SetDO Stack_Light_B,0;
                    WaitTime 0.2;
                    MoveL PC_F800B_Pick,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveL PC_F800B_Dep10,v600,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row5_End,v600,z10,gripper\WObj:=wobj_PartChute;
                ELSE
                    MoveL PC_F800B_Dep10,v200,fine,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Row5_End,v600,z10,gripper\WObj:=wobj_PartChute;
                    MoveJ PC_Home,v600,fine,gripper\WObj:=wobj_PartChute;
                    SetDO Stack_Light_B,0;
                    chuteEmpty:=1;
                ENDIF
            ENDIF
        ENDIF
    ENDPROC

ENDMODULE