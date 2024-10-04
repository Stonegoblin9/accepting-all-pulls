MODULE ServerCommand_Read
    PERS string startTime;
    PERS string startDate;
    PERS num secondsRuntime;
    PERS num currentJob{5};
    PERS bool isStopRequested;
    PERS bool startupJobRequested;
    PERS num partNumber;
    PERS num cycleTimeAvg{27};
    PERS num filterMaintCounter;
    PERS num filterResetCount;
    PERS bool downForMaintenance:=FALSE;
    PERS bool multitaskingEnabled:=TRUE;
    PERS bool incrimentalJobsEnabled:=TRUE;
    PERS bool failedBushingFamilies{3};
    PERS num failedPartNums{25}:=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
    
    VAR string tempString:="";

    PROC SCR_StartTime()
        SocketSend client_socket\Str:=startTime;
    ENDPROC

    PROC SCR_StartDate()
        SocketSend client_socket\Str:=startDate;
    ENDPROC

    PROC SCR_SecondsRunTime()
        SocketSend client_socket\Str:=NumToStr(secondsRuntime,0);
    ENDPROC

    PROC SCR_CurrentJob()
        SocketSend client_socket\Str:=NumToStr(currentJob{1},0)+","+NumToStr(currentJob{2},0)+","+NumToStr(currentJob{3},0)+","+NumToStr(currentJob{4},0)+","+NumToStr(currentJob{5},0);
    ENDPROC

    PROC SCR_IsStopRequested()
        IF isStopRequested
        THEN
            SocketSend client_socket\Str:="TRUE";
        ELSE
            SocketSend client_socket\Str:="FALSE";
        ENDIF
    ENDPROC

    PROC SCR_StartupJobRequested()
        IF startupJobRequested
        THEN
            SocketSend client_socket\Str:="TRUE";
        ELSE
            SocketSend client_socket\Str:="FALSE";
        ENDIF
    ENDPROC

    PROC SCR_PartNumber()
        SocketSend client_socket\Str:=NumToStr(partNumber,0);
    ENDPROC

    PROC SCR_CycleTimeAverages()
        tempString:=NumToStr(cycleTimeAvg{1},0);
        FOR i FROM 2 TO Dim(cycleTimeAvg,1) DO
            tempString:=tempString+","+NumToStr(cycleTimeAvg{i},0);
        ENDFOR
        SocketSend client_socket\Str:=tempString;
    ENDPROC

    PROC SCR_FilterMaintCount()
        SocketSend client_socket\Str:=NumToStr(filterMaintCounter,0);
    ENDPROC

    PROC SCR_FilterResetCount()
        SocketSend client_socket\Str:=NumToStr(filterResetCount,0);
    ENDPROC

    PROC SCR_DownForMaint()
        IF downForMaintenance
        THEN
            SocketSend client_socket\Str:="TRUE";
        ELSE
            SocketSend client_socket\Str:="FALSE";
        ENDIF
    ENDPROC

    PROC SCR_MultitaskingEnabled()
        IF multitaskingEnabled
        THEN
            SocketSend client_socket\Str:="TRUE";
        ELSE
            SocketSend client_socket\Str:="FALSE";
        ENDIF
    ENDPROC

    PROC SCR_IncrimentalJobEnabled()
        IF incrimentalJobsEnabled
        THEN
            SocketSend client_socket\Str:="TRUE";
        ELSE
            SocketSend client_socket\Str:="FALSE";
        ENDIF
    ENDPROC
    
    PROC SCR_failedBushingFamilies()
        tempString:="";
        
        IF failedBushingFamilies{1}
        THEN
            tempString:="TRUE,";
        ELSE
            tempString:="FALSE,";
        ENDIF
        
        IF failedBushingFamilies{2}
        THEN
            tempString:=tempString + "TRUE,";
        ELSE
            tempString:= tempString + "FALSE,";
        ENDIF
        
        IF failedBushingFamilies{3}
        THEN
            tempString:=tempString + "TRUE";
        ELSE
            tempString:=tempString + "FALSE";
        ENDIF
        
        SocketSend client_socket\Str:=tempString;
    ENDPROC
    
    PROC SCR_FailedPartNumbers()
        tempString:=NumToStr(failedPartNums{1},0);
        FOR i FROM 2 TO Dim(failedPartNums,1) DO
            tempString:=tempString+","+NumToStr(failedPartNums{i},0);
        ENDFOR
        SocketSend client_socket\Str:=tempString;
    ENDPROC
ENDMODULE