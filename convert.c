#include <stdio.h>
#include <stdlib.h>

// Define the ListNode structure
struct ListNode {
    int val;
    struct ListNode* next;
};

// Convert a binary number to a decimal integer
int getDecimalValue(struct ListNode* head) {
    int res = 0;
    while (head) {
        res = (res << 1) | head->val;
        head = head->next;
    }
    return res;
}

// Create a new ListNode
struct ListNode* createNode(int value) {
    struct ListNode* newNode = (struct ListNode*)malloc(sizeof(struct ListNode));
    newNode->val = value;
    newNode->next = NULL;
    return newNode;
}

// Main function
int main() {
    // Example 1: head = [1, 0, 1]
    struct ListNode* n1 = createNode(1);
    struct ListNode* n2 = createNode(0);
    struct ListNode* n3 = createNode(1);
    n1->next = n2;
    n2->next = n3;

    // Call getDecimalValue function and output the result
    printf("Example 1: Result = %d\n", getDecimalValue(n1));  // Expected output: 5

    // Example 2: head = [0]
    struct ListNode* n4 = createNode(0);

    // Call getDecimalValue function and output the result
    printf("Example 2: Result = %d\n", getDecimalValue(n4));  // Expected output: 0

    // Free memory
    free(n1);
    free(n2);
    free(n3);
    free(n4);

    return 0;
}
