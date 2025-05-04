       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIBONACCI.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  N           PIC 9(3) VALUE 10.
       01  FIB1        PIC 9(3) VALUE 0.
       01  FIB2        PIC 9(3) VALUE 1.
       01  FIB3        PIC 9(3).
       01  I           PIC 9(3).
       01  RESULT      PIC Z(3)9.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Fibonacci sequence up to " N " terms:".
           DISPLAY FIB1.
           DISPLAY FIB2.
           
           PERFORM VARYING I FROM 3 BY 1 UNTIL I > N
               COMPUTE FIB3 = FIB1 + FIB2
               MOVE FIB3 TO RESULT
               DISPLAY RESULT
               MOVE FIB2 TO FIB1
               MOVE FIB3 TO FIB2
           END-PERFORM.
           
           STOP RUN. 