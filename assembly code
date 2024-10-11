    .data
# Strings for output
example1_str: .asciz "Example 1: Result = "
newline:     .asciz "\n"
example2_str: .asciz "Example 2: Result = "

# Simulating linked list node data, storing the binary number [1, 0, 1] and [0]
node1: .word 1      # Node 1
node2: .word 0      # Node 2
node3: .word 1      # Node 3
node4: .word -1     # End marker

node5: .word 0      # Node for second example
node6: .word -1     # End marker for second example

    .text
    .globl main

main:
    # Process Example 1
    la a0, example1_str  # Load address of the string "Example 1: Result = "
    li a7, 4             # Syscall code 4 (print string)
    ecall                # Print the string
    la a0, node1         # Load address of the first node into a0 (head pointer)
    jal process_list     # Jump to common list processing function

    # Print newline after Example 1
    la a0, newline       # Load newline string
    li a7, 4             # Syscall code 4 (print string)
    ecall                # Print newline

    # Process Example 2
    la a0, example2_str  # Load address of the string "Example 2: Result = "
    li a7, 4             # Syscall code 4 (print string)
    ecall                # Print the string
    la a0, node5         # Load address of the second node into a0 (head pointer)
    jal process_list     # Jump to common list processing function

    # Print newline after Example 2
    la a0, newline       # Load newline string
    li a7, 4             # Syscall code 4 (print string)
    ecall                # Print newline

    # Exit program
    li a7, 10            # Syscall code 10 (exit)
    ecall

# Common function to process linked list and print result
process_list:
    li a1, 0             # Initialize result (res) to 0

loop:
    lw t0, 0(a0)         # Load the current node value (head->val) into t0
    blt t0, zero, end    # If the value is -1 (end marker), jump to end

    slli a1, a1, 1       # Left shift res by 1 (res <<= 1)
    or a1, a1, t0        # OR the current value with res (res |= head->val)

    addi a0, a0, 4       # Move to the next node (head = head->next)
    j loop               # Repeat the loop

end:
    # End of loop, result is stored in a1
    mv a0, a1            # Move the result into a0 for printing
    li a7, 1             # Syscall code 1 (print integer)
    ecall                # Make syscall to print the result
    ret                  # Return to the main function
