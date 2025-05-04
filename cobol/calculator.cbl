       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULATOR.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  NUM1        PIC 9(5).
       01  NUM2        PIC 9(5).
       01  RESULT      PIC 9(6).
       01  OPERATION   PIC X.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter first number: ".
           ACCEPT NUM1.
           
           DISPLAY "Enter operation (+, -, *, /): ".
           ACCEPT OPERATION.
           
           DISPLAY "Enter second number: ".
           ACCEPT NUM2.
           
           EVALUATE OPERATION
               WHEN "+"
                   COMPUTE RESULT = NUM1 + NUM2
               WHEN "-"
                   COMPUTE RESULT = NUM1 - NUM2
               WHEN "*"
                   COMPUTE RESULT = NUM1 * NUM2
               WHEN "/"
                   IF NUM2 = 0
                       DISPLAY "Error: Division by zero"
                       STOP RUN
                   END-IF
                   COMPUTE RESULT = NUM1 / NUM2
               WHEN OTHER
                   DISPLAY "Invalid operation"
                   STOP RUN
           END-EVALUATE.
           
           DISPLAY "Result: " RESULT.
           STOP RUN. 