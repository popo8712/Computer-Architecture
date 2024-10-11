# [Computer-Architecture] Convert Binary Number in a Linked List to Integer

## 1. Background
### 1.1 Convert Binary Number in a Linked List to Integer
- **Definition**: In this problem, we deal with a linked list where each node stores a binary digit (0 or 1). The head node of the linked list represents the most significant bit of the binary number, while the tail node represents the least significant bit. Our task is to convert this binary representation into the corresponding decimal integer.

- **Example**: Suppose the linked list is [1, 0, 1], which represents the binary number 101. Converting this to a decimal number results in 5.

- **Task Description**: Given a linked list, we need to read its contents step by step and convert the binary number into a decimal integer by shifting each binary digit to the left and accumulating the result. This process requires an understanding of how to operate on a linked list structure and how to efficiently perform bitwise operations.

### 1.2 Motivation
- **Method Used**: This problem involves converting a binary number to a decimal, which can typically be solved efficiently through bitwise operations. In the C code, we can use the left shift operation (`<<`) to move each encountered binary digit to the correct position and accumulate the result. Similarly, we aim to optimize the process by writing manual RISC-V assembly code, leveraging the simplicity of the RISC-V instruction set to produce faster and smaller code.

- **Performance Optimization**: The purpose of manually optimizing the code using RISC-V assembly is to reduce runtime overhead by utilizing simple bitwise operations, thereby avoiding unnecessary logic computations and function calls. This reduces the code size and improves efficiency, especially in contexts where floating-point operations or complex computations are not needed. Handwriting assembly allows for more precise control of the operations.

-> [read more...](https://hackmd.io/@popo8712/BJLWMXWJJg)
