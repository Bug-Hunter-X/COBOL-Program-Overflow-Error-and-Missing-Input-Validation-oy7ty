```cobol
01  WS-DATA-AREA.
    05 WS-COUNTER PIC 9(5) VALUE 0.
    05 WS-INPUT-VALUE PIC 9(3).
    05 WS-TOTAL PIC 9(15).
    05 WS-ERROR-FLAG PIC 9 VALUE 0. 

PROCEDURE DIVISION.
    PERFORM UNTIL WS-COUNTER > 10 OR WS-ERROR-FLAG = 1
        ACCEPT WS-INPUT-VALUE
        IF WS-INPUT-VALUE < 0
            DISPLAY "Error: Input must be positive."
            SET WS-ERROR-FLAG TO 1
        ELSE
            ADD WS-INPUT-VALUE TO WS-TOTAL
            ADD 1 TO WS-COUNTER
        END-IF
    END-PERFORM

    IF WS-ERROR-FLAG = 0
        DISPLAY "Total: " WS-TOTAL
    ELSE
        DISPLAY "Program terminated due to invalid input."
    END-IF
    STOP RUN.
```