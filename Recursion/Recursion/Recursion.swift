//
//  Recursion.swift
//  Recursion
//
//  Created by Rakesh on 08/08/19.
//  Copyright © 2019 Rakesh. All rights reserved.
//

import Foundation
//Node for linked List
class Node {
    var val: Int?
    var next: Node?
}
class Recursive {
    func newNode(value: Int) -> Node {
        let newNode = Node()
        newNode.val = value
        newNode.next = nil
        return newNode
    }
    // MARK: Question1
    // Print a pattern without using any loop?
    // eg: - input = 16
    // output = 16 11 6 1 -4 1 6 11 16
    func solution1(input: Int, changes: Int, flag: Bool) {
        print(changes, separator: " ", terminator: " ")
        if flag == false && input == changes {
            return
        }
        flag ? changes - 5 > -5 ? solution1(input: input, changes: changes - 5, flag: true): solution1(input: input, changes: changes - 5, flag: false) : solution1(input: input, changes: changes + 5, flag: false)
    }
    // MARK: - Question2
    // implements of Tower of Hanoi?
    func solution2(input: Int, from: String, to: String, help:String) {
        if input == 1 {
            print("Move Disk 1 from rod \(from) to rod \(to)")
            return
        }
        solution2(input: input - 1, from: from, to: to, help: help)
        print("Move Disk \(input) from rod \(from) to rod \(to)")
        solution2(input: input - 1, from: from, to: to, help: help)
    }
    // MARK: - Question3
    // Power Set in Lexicographic order?
    func permuteRec(str: String, n: Int, index: Int, curr: inout String){
        if index == n {
            return
        }
        print(curr, separator: " ", terminator: " ")
        for i in index + 1..<n {
            curr += String(str[str.index(str.startIndex, offsetBy: i)])
            permuteRec(str: str, n: n, index: i, curr: &curr)
            let start = curr.index(str.startIndex, offsetBy: 0)
            let last = curr.index(str.startIndex, offsetBy: curr.count - 1)
            let range = start..<last
            curr = curr.substring(with: range)
        }
    }
    func solution3(input: String) {
        var curr: String = ""
        var input1 = input
        input1 = String(input1.sorted())
        permuteRec(str: input1, n: input1.count, index: -1, curr: &curr)
    }
    // MARK: - Question4
    // Find middle of Singly Linked List using Recursively?
    var mid: Node?
    var n: Int?
    func midPoint(head: Node?) {
        if head == nil {
            n = (n ?? 0) / 2
            return
        }
        n = (n ?? 0) + 1
        midPoint(head: head?.next)
        n = (n ?? 0) - 1
        if n == 0 {
            mid = head
        }
    }
    func solution4(head: Node) {
        mid = nil
        n = 1
        midPoint(head: head)
        print(mid?.val ?? "")
    }
    // MARK: - Question5
    // Recursive approach for alternating split of Linked List?
    var a: Node?
    var b: Node?
    func moveNode(a:  Node?, b:  Node?) {
        if a == nil || b == nil {
            return
        }
        if a?.next != nil {
             a?.next = a?.next?.next
        }
        if b?.next != nil {
             b?.next = b?.next?.next
        }
        moveNode(a: a?.next, b: b?.next)
    }
    func solution5(head: Node) {
        if head.next != nil {
             a = head
             b = head.next
            moveNode(a: a, b: b)
        } else {
            print("not possible")
        }
    }
    // MARK: - Question6
    // Recursive example
    var output = 0
    func solution6(input: inout Int){
        print("hi")
        input -= 1
        if input > 0 {
            solution6(input: &input)
            output += 1
            print(output)
        }
    }
}
