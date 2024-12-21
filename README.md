# COBOL Program: Summation with Overflow and Validation Issues

This repository contains a COBOL program designed to calculate the sum of user-input numbers. However, it suffers from two main issues:

1. **Potential for Overflow:**  The `WS-TOTAL` field has a limited size, which can lead to an arithmetic overflow if the sum of the input numbers exceeds its maximum value. 
2. **Lack of Input Validation:** The program doesn't validate user input, making it susceptible to invalid data entry.

The `bug.cob` file demonstrates the flawed program.  The solution, which addresses both these issues and includes input validation and error handling, can be found in `bugSolution.cob`.

This example highlights the importance of careful data type selection and robust error handling in COBOL programming.