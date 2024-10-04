MODULE DoorUnlock
    PROC main()
        IF Door_Button=0
        THEN
            SetGO Stack_Light_All,31;
            SetDO Safety_Lock,0;
        ENDIF
    ENDPROC
ENDMODULE