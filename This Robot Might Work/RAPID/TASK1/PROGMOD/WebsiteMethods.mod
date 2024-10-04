MODULE WebsiteMethods

    !WEBSITE VARIABLES - READ ACCESS
    PERS string startTime;
    PERS string startDate;
    PERS num secondsRuntime;
    PERS num partNumber:=15;
    PERS num cycleTimeAvg{27}:=[37.54,33.307,25.611,33.041,33.656,24.956,38.127,37.352,29.784,29.975,44.808,52.497,43.316,49.15,46.728,47.606,47.858,45.84,33.132,43.753,42.965,24.687,47.475,47.856,30.866,50,50];
    PERS num filterMaintCounter:=2340;
    PERS num filterResetCount:=5000;

    !WEBSITE VARIABLES - READ/WRITE ACCESS
    PERS num markEnabled{25}:=[1,2,3,4,5,6,7,8,9,11,17,12,18,13,20,14,23,24,15,16,19,21,10,22,25];
    !PERS num markEnabled{25}:=[1,2,3,4,5,6,7,8,9,11,17,12,18,13,20,14,23,24,15,16,19,21,10,22,25];
    !PERS num bushingEnabled{12}:=[13,20,11,17,12,18,14,23,24,15,16,21];
    PERS num bushingEnabled{12}:=[13,20,11,17,12,18,14,23,24,15,16,21];
    PERS num currentJob{5}:=[0,0,0,0,0];
    PERS num prepJob{5}:=[2004,15,153,76,0];
    PERS bool multitaskingEnabled:=TRUE;
    PERS bool incrimentalJobsEnabled:=TRUE;
    PERS bool startupJobRequested:=FALSE;
    PERS bool jobComplete:=FALSE;
    PERS bool requestNextJob:=FALSE;
    PERS bool isStopRequested;
    VAR num partDiscarded:=0;

    PROC getNextJob()
        !Check to make sure that the website is enabled
        IF runWithWebsiteEnabled
        THEN
            !Request another job from website and get updated job values
            !The job might already be loaded, make sure that the prepNextJob is not all 0s and start there
            IF prepJob{1}=0 AND prepJob{2}=0 AND prepJob{3}=0 AND prepJob{4}=0 AND prepJob{5}=0
        THEN
                requestNextJob:=TRUE;

                Waittime 30;

                IF requestNextJob=TRUE
            THEN
                    UpdateTP("Could not get a job from website");
                    PrintTP;

                    Robot_Cooldown;

                    Stop;
                    EXIT;
                ENDIF

                !Check to see if the job is empty
                IF currentJob{2}=0
            THEN
                    UpdateTP("Robot ran out of jobs from website");
                    PrintTP;

                    Robot_Cooldown;

                    Stop;
                    EXIT;
                ENDIF
            ELSE
                !Move the job from prep to current
                currentJob{1}:=prepJob{1};
                currentJob{2}:=prepJob{2};
                currentJob{3}:=prepJob{3};
                currentJob{4}:=prepJob{4};
                currentJob{5}:=prepJob{5};

                !Mark the prep job as used
                prepJob:=[0,0,0,0,0];
            ENDIF
        ELSE
            RequestJob;
            requestNextJob:=FALSE;
        ENDIF


    ENDPROC

    PROC RequestJob()
        !Check to make sure the website is enabled
        IF runWithWebsiteEnabled
        THEN
            !The job might already be loaded, make sure that the prepNextJob is not all 0s and start there
            IF prepJob{1}=0 AND prepJob{2}=0 AND prepJob{3}=0 AND prepJob{4}=0 AND prepJob{5}=0
            THEN
                !Request job from website and get updated job values
                startupJobRequested:=TRUE;

                Waittime 30;

                IF startupJobRequested=TRUE
                THEN
                    UpdateTP("Could not get a job from website");
                    PrintTP;

                    Robot_Cooldown;

                    Stop;
                    EXIT;
                ENDIF
            ELSE
                !Move the job from prep to current
                currentJob{1}:=prepJob{1};
                currentJob{2}:=prepJob{2};
                currentJob{3}:=prepJob{3};
                currentJob{4}:=prepJob{4};
                currentJob{5}:=prepJob{5};

                !Mark the prep job as used
                prepJob:=[0,0,0,0,0];

                !Set the first part marked as true
                markedPart:=TRUE;
            ENDIF
        ELSE
            currentJob:=[0,0,0,0,0];
            startupJobRequested:=FALSE;
            !Asking the operator what part number they would like to run
            list_item:=UIListView(\Result:=button_answer\Header:="Select Cycle Start Point",partPickList\Buttons:=btnOKCancel\Icon:=iconInfo\DefaultIndex:=1);
            IF button_answer=resOK
            THEN
                IF list_item=26
                THEN
                    !Ask them which X Number to run
                    list_item1:=UIListView(\Result:=button_answer\Header:="Select Cycle Start Point",xNumberPickList\Buttons:=btnOKCancel\Icon:=iconInfo\DefaultIndex:=1);
                    IF button_answer=resOK
                    THEN
                        currentJob{5}:=list_item1;
                    ELSE
                        !Throw and error and stop because that is not a valid part number
                        UpdateTP("Error invalid part number selected!");
                        PrintTP;
                        Stop;
                        EXIT;
                    ENDIF
                ELSE
                    currentJob{1}:=list_item;
                    currentJob{2}:=list_item;
                ENDIF
            ELSE
                !Throw and error and stop because that is not a valid part number
                UpdateTP("Error invalid part number selected!");
                PrintTP;
                Stop;
                EXIT;
            ENDIF

            !Now get the Qty to produce
            currentJob{3}:=UINumEntry(\Header:="Quantity Selection"\Message:="How many parts should be made?"\Icon:=iconInfo\InitValue:=0\MinValue:=0\MaxValue:=1000\AsInteger);
            currentJob{4}:=0;
        ENDIF
    ENDPROC
ENDMODULE