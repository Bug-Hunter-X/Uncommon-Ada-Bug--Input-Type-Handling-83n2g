# Uncommon Ada Bug: Input Type Handling

This repository demonstrates an uncommon error in Ada programming related to input type handling. The program intends to check if a given integer is within the range of 10 to 100.  However, it lacks robust error handling for non-integer inputs, leading to runtime exceptions.

The bug is showcased in `bug.ada`. The solution, incorporating proper input validation and exception handling, is provided in `bugSolution.ada`.