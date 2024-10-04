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

    !STACKLIGHT CONTROLS
    PERS stackLightStatus stacklights;

    PERS bool runStartupAsync;
    PERS tasks task_sync_list{2}:=[["T_ROB1"],["T_StartupAsync"]];
    VAR syncident sync1;

    PROC main()
        WHILE TRUE DO
            IF runStartupAsync
            THEN
                Laser_Startup;
                
                WaitSyncTask sync1,task_sync_list;
                runStartupAsync:=FALSE;
            ENDIF
            WaitTime .05;
        ENDWHILE
    ENDPROC
ENDMODULE