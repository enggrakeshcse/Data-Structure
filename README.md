# Data-Structure
## Recursive 
https://www.geeksforgeeks.org/recursion-practice-problems-solutions/
### Question1
Print a pattern without using any loop?
### Question2
Implements of Tower of Hanoi?
### Question3
Power Set in Lexicographic order?
### Question4
Find middle of singly linked list Recursively?
### Question5
Recursive approach for alternating split of Linked List?
### Question6
Understand flow of recursive function

=======

## Linked List
https://www.geeksforgeeks.org/top-20-linked-list-interview-question/
### Implements a Single Linked List
### Implements a Doubly Linked List
### Question1 
How do you find the middle element of a singly linked list in one pass?
### Question2 
How do you reverse a linked list?
### Question3
Third Element from end?
### Question4
How do delete the elements in an linked list whose sum is equal to zero?

=======

## Stack
### Stack Implementation using Array
### Stack Implementation using LinkedList
### Question1
Check if given expression is balanced expression or not?
### Question2
Reverse the String without using Recrusive.
### Question3
Implements Queue using Stack.

=======

## Queue
https://medium.com/@codingfreak/queue-data-structure-practice-problems-and-interview-questions-f459bf0578db <br />
https://www.geeksforgeeks.org/queue-data-structure/ <br />
### Queue implementation using Array
### Queue implementation using LinkedList

=======

## Sorting Algo
### Selection Sort
Algo : - <br />
Step 1 − Set MIN to location 0 <br />
Step 2 − Search the minimum element in the list <br />
Step 3 − Swap with value at location MIN <br />
Step 4 − Increment MIN to point to next element <br />
Step 5 − Repeat until list is sorted <br />
TimeComplexity = O(n^2) <br />
For Example:- <br />
    7   8   4   2 <br />
    2   8   4   7 <br />
    2   4   8   7 <br />
    2   4   7   8 <br />
### Insertion Sort
Algo: - <br />
Step 1 − If it is the first element, it is already sorted. return 1 <br />
Step 2 − Pick next element <br />
Step 3 − Compare with all elements in the sorted sub-list <br />
Step 4 − Shift all the elements in the sorted sub-list that is greater than the  
value to be sorted <br />
Step 5 − Insert the value <br />
Step 6 − Repeat until list is sorted <br />
TimeComplexity- O(n^2) <br />
For Example:- <br />
7   8   4   2 <br />
7   8   4   2 <br />
4   8   7   2 <br />
4   7   8   2 <br />
2   7   8   4 <br />
2   4   8   7 <br />
2   4   7   8 <br />
### Bubble Sort
Algo: - <br />
Step 1 - Take a unsorted list<br />
Step 2 - for i = 0 to list.count - 1<br />
Step 3 - for j = 0 to list.count - 1 - i <br />
Step 4 - if list[j] > list[j + 1] -> Swap(list[j], list[j + 1])<br />
Step 5 - finally we get sorted list<br />
TimeComplexity = O(n^2)<br />
For Example:- <br />
7   8   4   2 <br />
7   8   4   2 <br />
7   4   8   2 <br />
4   7   2   8 <br />
4   2   7   8 <br />
2   4   7   8 <br />
### Merge Sort
TimeComplexity = O(nlogn)<br/>
<img src="https://github.com/enggrakeshcse/Data-Structure/blob/Sorting-Algo/Sort-Algo/Images/Screen%20Shot%202019-08-07%20at%201.03.14%20PM.png" /> 

<b> Merge

<img src="https://github.com/enggrakeshcse/Data-Structure/blob/Sorting-Algo/Sort-Algo/merge.png" /> 

### Quick Sort 
TimeComplexity = O(nlogn) <br />
<img src="https://github.com/enggrakeshcse/Data-Structure/blob/Sorting-Algo/Sort-Algo/quick_sort.jpg" /> 

=======

### Binary Tree
https://github.com/raywenderlich/swift-algorithm-club/tree/master/Binary%20Tree
https://www.geeksforgeeks.org/binary-tree-data-structure/

A tree whose elements have at most 2 children is called a binary tree. Since each element in a binary tree can have only 2 children, we typically name them the left and right child.

### Implements a Binary Tree
for example <br />
<img src="https://github.com/enggrakeshcse/Data-Structure/blob/Trees/Tree/images/binaryTree.png" /> 

### Traverse inorder, Preorder and postorder in Binary Tree

 Inorder (or depth-first):-<br />
first look at the left child of a node, then at the node itself, and finally at its right child. <br />
[7, 3, 8, 1, 9, 4, 10, 0, 11, 5, 12, 2, 13, 6, 14]<br /><br />
 Preorder:-<br />
first look at a node, then at its left and right children. <br />
[0, 1, 3, 7, 8, 4, 9, 10, 2, 5, 11, 12, 6, 13, 14]<br /><br />
 Postorder:-<br />
first look at the left and right children and process the node itself last. <br />
[7, 8, 3, 9, 10, 4, 1, 11, 12, 5, 13, 14, 6, 2, 0]<br /><br />

### Binary Search Tree
https://www.geeksforgeeks.org/binary-search-tree-data-structure/
https://medium.com/@codingfreak/binary-search-tree-bst-practice-problems-and-interview-questions-ea13a6731098
<br />Binary Search Tree is a node-based binary tree data structure which has the following properties:<br /><br />
                # The left subtree of a node contains only nodes with keys lesser than the node’s key.<br />
                # The right subtree of a node contains only nodes with keys greater than the node’s key.<br />
                # The left and right subtree each must also be a binary search tree.<br />

### Implementation of Binary Search Tree


### AVL Tree

https://github.com/raywenderlich/swift-algorithm-club/tree/master/AVL%20Tree
https://www.geeksforgeeks.org/avl-tree-set-1-insertion/

AVL tree is a self-balancing Binary Search Tree (BST) where the difference between heights of left and right subtrees cannot be more than one for all nodes.

### Implementation of AVL Tree
