//
//  main.swift
//  Recursion
//
//  Created by Rakesh on 08/08/19.
//  Copyright © 2019 Rakesh. All rights reserved.
//

import Foundation

let recursion = Recursive()
// Solution1
//print("enter your input")
//let input = Int(readLine()!)!
//input > 0 ? recursion.solution1(input: input, changes: input, flag: true): print("Enter a positive no")

// Solution2
//print("enter you input")
//let input = Int(readLine()!)!
//input > 0 ? recursion.solution2(input: input, from: "B", to: "A", help: "C") : print("invalid input")

// Solution3
//print("Enter you input")
//let input = readLine()!
//recursion.solution3(input: input)

// Solution3 and Solution4
let head = recursion.newNode(value: 1)
head.next = recursion.newNode(value: 2)
head.next?.next = recursion.newNode(value: 3)
head.next?.next?.next = recursion.newNode(value: 4)
head.next?.next?.next?.next = recursion.newNode(value: 5)
recursion.solution4(head: head)
recursion.solution5(head: head)
