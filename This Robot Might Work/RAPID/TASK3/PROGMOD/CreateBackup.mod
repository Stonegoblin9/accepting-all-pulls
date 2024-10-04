MODULE CreateBackup
    PROC main()
        !create a backup every so often
        WHILE TRUE DO
            !delete the old backup
            RemoveDir "HOME:/Backups";
            WaitTime 1;
            MakeDir "HOME:/Backups";
            !make a new backup
            SetDO do_CreateBackup,1;
            WaitTime 3;
            SetDO do_CreateBackup,0;
            !wait for a day minus 4 seconds
            WaitTime 86396;
        ENDWHILE
        WaitTime 100;
    ENDPROC
ENDMODULE