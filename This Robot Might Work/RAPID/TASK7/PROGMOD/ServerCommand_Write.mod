MODULE ServerCommand_Write
    PERS num markEnabled{25};
    PERS num bushingEnabled{12};

    VAR bool tempBool:=FALSE;
    VAR num tempNum:=0;
    VAR num tempMarkEnable{25}:=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
    VAR num tempBushingEnabled{12}:=[0,0,0,0,0,0,0,0,0,0,0,0];
    VAR num tempCurrentJob{5}:=[0,0,0,0,0];

    PROC SCW_MarkEnabled(string data)
        FOR i FROM 1 TO 25 DO
            tempNum:=0;
            IF StrFind(data,1,",")<StrLen(data)
            THEN
                tempBool:=StrToVal(StrPart(data,1,StrFind(data,1,",")-1),tempMarkEnable{i});
                data:=StrPart(data,StrLen(NumToStr(tempMarkEnable{i},0))+2,StrLen(data)-StrLen(NumToStr(tempMarkEnable{i},0))-1);
                tempNum:=i;
            ENDIF
        ENDFOR
        !Convert the last value that wasn't a comma
        tempBool:=StrToVal(data,tempMarkEnable{tempNum+1});

        !Once that is donw we can set the value
        markEnabled:=tempMarkEnable;
        SocketSend client_socket\Str:="TRUE";

    ERROR
        SocketSend client_socket\Str:="FALSE";
        RAISE ;
    ENDPROC

    PROC SCW_BushingEnabled(string data)
        FOR i FROM 1 TO 12 DO
            tempNum:=0;
            IF StrFind(data,1,",")<StrLen(data)
            THEN
                tempBool:=StrToVal(StrPart(data,1,StrFind(data,1,",")-1),tempBushingEnabled{i});
                data:=StrPart(data,StrLen(NumToStr(tempBushingEnabled{i},0))+2,StrLen(data)-StrLen(NumToStr(tempBushingEnabled{i},0))-1);
                tempNum:=i;
            ENDIF
        ENDFOR
        !Convert the last value that wasn't a comma
        tempBool:=StrToVal(data,tempBushingEnabled{tempNum+1});

        !Once that is donw we can set the value
        bushingEnabled:=tempBushingEnabled;
        SocketSend client_socket\Str:="TRUE";

    ERROR
        SocketSend client_socket\Str:="FALSE";
        RAISE ;
    ENDPROC

    PROC SCW_CurrentJob(string data)
        tempNum:=0;
        FOR i FROM 1 TO 5 DO
            IF StrFind(data,1,",")<StrLen(data)
            THEN
                tempBool:=StrToVal(StrPart(data,1,StrFind(data,1,",")-1),tempCurrentJob{i});
                data:=StrPart(data,StrLen(NumToStr(tempCurrentJob{i},0))+2,StrLen(data)-StrLen(NumToStr(tempCurrentJob{i},0))-1);
                tempNum:=i;
            ENDIF
        ENDFOR
        !Convert the last value that wasn't a comma
        tempBool:=StrToVal(data,tempCurrentJob{tempNum+1});

        !Once that is donw we can set the value
        currentJob:=tempCurrentJob;
        SocketSend client_socket\Str:="TRUE";

    ERROR
        SocketSend client_socket\Str:="FALSE";
        RAISE ;
    ENDPROC

    PROC SCW_MultitaskingEnabled(string data)
        IF data="TRUE"
        THEN
            multitaskingEnabled:=TRUE;
            SocketSend client_socket\Str:="TRUE";
        ELSEIF data="FALSE"
        THEN
            multitaskingEnabled:=FALSE;
            SocketSend client_socket\Str:="TRUE";
        ELSE
            SocketSend client_socket\Str:="FALSE";
        ENDIF
    ERROR
        SocketSend client_socket\Str:="FALSE";
        RAISE ;
    ENDPROC

    PROC SCW_IncrimentalJobsEnabled(string data)
        IF data="TRUE"
        THEN
            incrimentalJobsEnabled:=TRUE;
            SocketSend client_socket\Str:="TRUE";
        ELSEIF data="FALSE"
        THEN
            incrimentalJobsEnabled:=FALSE;
            SocketSend client_socket\Str:="TRUE";
        ELSE
            SocketSend client_socket\Str:="FALSE";
        ENDIF
    ERROR
        SocketSend client_socket\Str:="FALSE";
        RAISE ;
    ENDPROC
    
        PROC SCW_StartupJobRequested(string data)
        IF data="TRUE"
        THEN
            startupJobRequested:=TRUE;
            SocketSend client_socket\Str:="TRUE";
        ELSEIF data="FALSE"
        THEN
            startupJobRequested:=FALSE;
            SocketSend client_socket\Str:="TRUE";
        ELSE
            SocketSend client_socket\Str:="FALSE";
        ENDIF
    ERROR
        SocketSend client_socket\Str:="FALSE";
        RAISE ;
    ENDPROC
ENDMODULE