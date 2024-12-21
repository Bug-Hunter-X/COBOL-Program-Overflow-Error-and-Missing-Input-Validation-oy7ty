```cobol
01  WS-DATA-AREA.
    05 WS-COUNTER PIC 9(5) VALUE 0.
    05 WS-INPUT-VALUE PIC 9(3).
    05 WS-TOTAL PIC 9(7).

PROCEDURE DIVISION.
    PERFORM UNTIL WS-COUNTER > 10
        ACCEPT WS-INPUT-VALUE
        ADD WS-INPUT-VALUE TO WS-TOTAL
        ADD 1 TO WS-COUNTER
    END-PERFORM
    DISPLAY "Total: " WS-TOTAL
    STOP RUN.
```