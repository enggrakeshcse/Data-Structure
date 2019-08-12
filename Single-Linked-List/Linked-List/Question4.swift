//
//  Question4.swift
//  Linked-List
//
//  Created by Rakesh on 02/08/19.
//

import Foundation
class Node {
    var val: Int?
    var next: Node?
}
class Question4 {
    var head = Node()
    //MARK: - insert elements
    func insert(value: Int) {
        if head.val == nil {
            self.head.val = value
        } else {
            var lastNode = self.head
            while lastNode.next != nil {
                lastNode = lastNode.next!
            }
            let newNode = Node()
            newNode.next = nil
            newNode.val = value
            lastNode.next = newNode
        }
    }
    //MARK: - print all elements
    func printAllElemetArray() {
        var current: Node! = head
        if current.val == nil {
            print("There is no element in Linked List ")
        } else {
            while current.next != nil {
                print(current.val ?? "")
                current = current.next
            }
            print(current.val ?? "")
        }
    }
    //MARK: - Question4
    //how do delete the elements in an linked list whose sum is equal to zero?
    func Solution4() {
        var start = head
        var end: Node? = nil
        var sum = 0
        var modified = false
        //var newHead: Node? = nil
        while start.next != nil{
            sum = 0
            modified = false
            end = start.next
            sum = start.val!
            while end?.val != nil {
                sum += (end?.val)!
                if sum == 0 {
                    start.next = end?.next
                    if start.next != nil {
                        head = start.next!
                    } else {
                        head.val = nil
                    }
                    modified = true
                    break
                }
                end = end?.next
            }
            if modified == false {
                start = start.next!
                //head = start
            }
        }
    }
}
