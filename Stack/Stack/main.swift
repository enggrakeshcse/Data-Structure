//
//  main.swift
//  Stack
//
//  Created by Rakesh on 06/08/19.
//  Copyright © 2019 Rakesh. All rights reserved.
//

import Foundation

// Stack implements using Array
let stack = Stack<Int>()
//stack.printAllElementsInStack()
//stack.push(value: 2)
//stack.push(value: 3)
//stack.push(value: 4)
//stack.printAllElementsInStack()
//stack.pop()
//stack.printAllElementsInStack()

// Stack Implements using LinkedList
//stack.pushThroughLinkedList(value: 2)
//stack.pushThroughLinkedList(value: 3)
//stack.pushThroughLinkedList(value: 4)
//stack.pushThroughLinkedList(value: 5)
//stack.printAllElemetLinkedList()
//stack.popThroughLinkedList()
//stack.printAllElemetLinkedList()

//Question1
print("Enter the input")
let arrInput = readLine()!
//print(arrInput)
//stack.Solution1(arrInput: arrInput) ? print("balanced"): print("not balanced")

//Question2
print(stack.Solution2(arrInput: arrInput))
