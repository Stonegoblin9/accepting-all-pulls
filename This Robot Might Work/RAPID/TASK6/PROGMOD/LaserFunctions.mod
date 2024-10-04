MODULE LaserFunctions
    PROC Laser_Startup()
        IF Laser_DI_LaserFault=1
        THEN
            SetDO Stack_Light_O,1;
        ENDIF
        IF Laser_DI_LaserFault=0
        THEN
            SetDO Stack_Light_O,0;
        ENDIF
        ClearLaser;
        ReferenceAxes;
        SetFilePath;
    ENDPROC

    PROC ClearLaser()
        !Laser needs to be reset during startup to allow the laser counters to reset along with the robot
        !Laser prefers when Laser_On is set to 1 BEFORE Laser_Reset occurs. Otherwise prone to error
        SetDO Laser_On,1;
        SetDO Laser_Pilot,0;
        SetGO Laser_GO_Handshake,0;
        SetDO Laser_Shutter,0;
        !Shutter should remain off
        WaitTime 2;
        SetDO Laser_Reset,1;
        SetGO Laser_GO_Command,0;
        SetGO Laser_GO_Length,0;
        SetGO Laser_GO_Value1,0;
        SetGO Laser_GO_Value2,0;
        SetGO Laser_GO_Value3,0;
        SetGO Laser_GO_Value4,0;
        SetGO Laser_GO_Value5,0;
        SetGO Laser_GO_Value6,0;
        SetGO Laser_GO_Value7,0;
        SetGO Laser_GO_Value8,0;
        SetGO Laser_GO_Value9,0;
        SetGO Laser_GO_Value10,0;
        SetGO Laser_GO_Value11,0;
        SetGO Laser_GO_Value12,0;
        SetGO Laser_GO_Value13,0;
        SetGO Laser_GO_Value14,0;
        SetGO Laser_GO_Value15,0;
        WaitTime 1;
        SetDO Laser_Reset,0;
    ENDPROC

    PROC ReferenceAxes()
        !REFERENCE ALL AXES
        SetGO Laser_GO_Command,20101;
        !Reference Axes
        SetGO Laser_GO_Length,2;
        !Length of command (Value + null)
        SetGO Laser_GO_Value1,49;
        !1 (Wait until end)
        SetGO Laser_GO_Value2,0;
        !null
        IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
            THEN
            SetGO Laser_GO_Handshake,2;
        ELSE
            SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
        ENDIF
        WaitGI Laser_GI_Response,20101;
        WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
        !Wait for handshake response to match what was sent
    ENDPROC

    PROC SetFilePath()
        !SET FILE PATH FOR VLF FILE
        SetGO Laser_GO_Command,20404;
        !Set File Path
        SetGO Laser_GO_Length,10;
        !Length is 9 characters (C:\PARKER) + null
        SetGO Laser_GO_Value1,67;
        !C
        SetGO Laser_GO_Value2,58;
        !:
        SetGO Laser_GO_Value3,92;
        !\
        SetGO Laser_GO_Value4,80;
        !P
        SetGO Laser_GO_Value5,65;
        !A
        SetGO Laser_GO_Value6,82;
        !R
        SetGO Laser_GO_Value7,75;
        !K
        SetGO Laser_GO_Value8,69;
        !E
        SetGO Laser_GO_Value9,82;
        !R
        SetGO Laser_GO_Value10,0;
        !null
        IF GInput(Laser_GI_Handshake)=0 OR GInput(Laser_GI_Handshake)=1 OR GInput(Laser_GI_Handshake)=255
            THEN
            SetGO Laser_GO_Handshake,2;
        ELSE
            SetGO Laser_GO_Handshake,(Laser_GI_Handshake+1);
        ENDIF
        WaitGI Laser_GI_Response,20404;
        WaitGI Laser_GI_Handshake,Laser_GO_Handshake;
        !Wait for handshake response to match what was sent
    ENDPROC
ENDMODULE