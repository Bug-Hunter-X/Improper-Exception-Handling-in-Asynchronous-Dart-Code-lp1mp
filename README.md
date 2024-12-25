# Improper Exception Handling in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code: improper exception handling within `async` functions. The provided `bug.dart` file showcases the issue, while `bugSolution.dart` offers a corrected version.

## Bug

The `fetchData` function in `bug.dart` uses a `try-catch` block to handle potential exceptions during an HTTP request. However, simply catching the exception without rethrowing it can mask errors, making debugging difficult.  

## Solution

The `bugSolution.dart` file corrects this by rethrowing the caught exception (`rethrow;`). This allows higher-level code to handle the error appropriately, providing better error reporting and recovery mechanisms.

## How to reproduce the bug

1. Clone this repository.
2. Run `bug.dart` (replace with your actual execution command).
3. Observe the output. Note that errors might not be reported clearly.
4. Run `bugSolution.dart`. Errors will be reported more effectively.

## Lessons Learned

* Always handle exceptions appropriately in asynchronous operations.
* Rethrow exceptions caught in `try-catch` blocks to maintain the error reporting chain.
* Implement robust error handling for more reliable and maintainable applications.