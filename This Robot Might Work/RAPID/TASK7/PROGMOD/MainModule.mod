MODULE MainModule
    VAR socketdev server_socket;
    VAR socketdev client_socket;
    VAR string messageFromClient:="";
    VAR string commandMessage{3}:=["","",""];
    VAR bool firstSocketSetup:=TRUE;
    VAR bool resetSocketConnection:=TRUE;

    PERS bool enableSocketComms:=FALSE;

    PROC main()
        Sockets;
        WaitTime .05;
    ERROR
        RETRY;
    ENDPROC

    PROC Sockets()
        IF enableSocketComms
        THEN
            IF firstSocketSetup
            THEN
                !Setup the server and leave open until it closes for some reason
                SocketCreate server_socket;
                SocketBind server_socket,"172.25.113.220",1025;
                SocketListen server_socket;
                firstSocketSetup:=FALSE;
            ENDIF

            WHILE TRUE DO                
                IF resetSocketConnection
                THEN
                    SocketAccept server_socket,client_socket;
                    resetSocketConnection:=FALSE;
                ENDIF
                SocketReceive client_socket\Str:=messageFromClient\Time:=WAIT_MAX;
                !Parse the message from the client into a command
                commandMessage:=["","",""];
                IF NOT (messageFromClient="")
                THEN
                    !If there is a comma then separate the first section into the array
                    IF StrFind(messageFromClient,1,",")<StrLen(messageFromClient)
                    THEN
                        commandMessage{1}:=StrPart(messageFromClient,1,StrFind(messageFromClient,1,",")-1);
                        messageFromClient:=StrPart(messageFromClient,StrLen(commandMessage{1})+2,StrLen(messageFromClient)-StrLen(commandMessage{1})-1);
                    ENDIF
                    !If there is a comma then separate the second section into the array
                    IF StrFind(messageFromClient,1,",")<StrLen(messageFromClient)
                    THEN
                        commandMessage{2}:=StrPart(messageFromClient,1,StrFind(messageFromClient,1,",")-1);
                        messageFromClient:=StrPart(messageFromClient,StrLen(commandMessage{2})+2,StrLen(messageFromClient)-StrLen(commandMessage{2})-1);
                    ENDIF
                    !If there is any length left to the string then this is the last argument so put it where it belongs
                    IF commandMessage{2}=""
                    THEN
                        commandMessage{2}:=messageFromClient;
                    ELSE
                        commandMessage{3}:=messageFromClient;
                    ENDIF
                ENDIF

                !Process this command
                IF commandMessage{1}="READ"
                THEN
                    IF commandMessage{2}="STARTTIME"
                    THEN
                        SCR_StartTime;
                    ELSEIF commandMessage{2}="STARTDATE"
                    THEN
                        SCR_StartDate;
                    ELSEIF commandMessage{2}="SECONDSRUNTIME"
                    THEN
                        SCR_SecondsRunTime;
                    ELSEIF commandMessage{2}="CURRENTJOB"
                    THEN
                        SCR_CurrentJob;
                    ELSEIF commandMessage{2}="ISSTOPREQUESTED"
                    THEN
                        SCR_IsStopRequested;
                    ELSEIF commandMessage{2}="STARTUPJOBREQUESTED"
                    THEN
                        SCR_StartupJobRequested;
                    ELSEIF commandMessage{2}="PARTNUMBER"
                    THEN
                        SCR_PartNumber;
                    ELSEIF commandMessage{2}="CYCLETIMEAVERAGE"
                    THEN
                        SCR_CycleTimeAverages;
                    ELSEIF commandMessage{2}="FILTERMAINTCOUNT"
                    THEN
                        SCR_FilterMaintCount;
                    ELSEIF commandMessage{2}="FILTERRESETCOUNT"
                    THEN
                        SCR_FilterResetCount;
                    ELSEIF commandMessage{2}="DOWNFORMAINTENANCE"
                    THEN
                        SCR_DownForMaint;
                    ELSEIF commandMessage{2}="MULTITASKINGENABLED"
                    THEN
                        SCR_MultitaskingEnabled;
                    ELSEIF commandMessage{2}="INCRIMENTALJOBENABLED"
                    THEN
                        SCR_IncrimentalJobEnabled;
                    ELSEIF commandMessage{2}="FAILEDBUSHINGFAMILIES"
                    THEN
                        SCR_failedBushingFamilies;
                    ELSEIF commandMessage{2}="FAILEDPARTNUMBERS"
                    THEN
                        SCR_FailedPartNumbers;
                    ELSE
                        SendErrorResponse("ERROR: Unknown Command");
                    ENDIF
                ELSEIF commandMessage{1}="WRITE"
                THEN
                    IF commandMessage{2}="MARKENABLED"
                    THEN
                        SCW_MarkEnabled(commandMessage{3});
                    ELSEIF commandMessage{2}="BUSHINGENABLED"
                    THEN
                        SCW_BushingEnabled(commandMessage{3});
                    ELSEIF commandMessage{2}="CURRENTJOB"
                    THEN
                        SCW_CurrentJob(commandMessage{3});
                    ELSEIF commandMessage{2}="MULTITASKINGENABLED"
                    THEN
                        SCW_MultitaskingEnabled(commandMessage{3});
                    ELSEIF commandMessage{2}="INCRIMENTALJOBSENABLED"
                    THEN
                        SCW_IncrimentalJobsEnabled(commandMessage{3});
                    ELSEIF commandMessage{2}="STARTUPJOBREQUESTED"
                    THEN
                        SCW_StartupJobRequested(commandMessage{3});
                    ENDIF
                ENDIF

            ENDWHILE
            SocketClose client_socket;
        ENDIF
    ERROR
        IF ERRNO=ERR_SOCK_TIMEOUT THEN
            RETRY;
        ELSEIF ERRNO=ERR_SOCK_CLOSED THEN
            SocketClose client_socket;
            resetSocketConnection:=TRUE;
            RAISE ;
        ELSE
            ! No error recovery handling
        ENDIF
    ENDPROC
    
    PROC SendErrorResponse(string returnstring)
        SocketSend client_socket\Str:=returnstring;
    ENDPROC
ENDMODULE