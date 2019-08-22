//
//  LinkedList.swift
//  Graph
//
//  Created by Rakesh on 21/08/19.
//  Copyright © 2019 Rakesh. All rights reserved.
//

import Foundation
class SingleNode<T: Equatable> {
    var val: T?
    var next: SingleNode?
}
class SingleLinkedList<T: Equatable> {
    var head = SingleNode<T>()
    //MARK: - insertion from end
    func insert(value: T) {
        if head.val == nil {
            self.head.val = value
        } else {
            var lastNode = self.head
            while lastNode.next != nil {
                lastNode = lastNode.next!
            }
            let newNode = SingleNode<T>()
            newNode.next = nil
            newNode.val = value
            lastNode.next = newNode
        }
    }
    //MARK: - print all element
    func printAllElemetArray() {
        var current: SingleNode! = head
        if current.val == nil {
            print("There is no element in Linked List ")
        } else {
            while current.next != nil {
                print(current.val ?? "", separator: " ", terminator: "->")
//                print(current.val ?? "")
                current = current.next
            }
            print(current.val ?? "", separator: " ", terminator: " ")
//            print(current.val ?? "")
        }
    }
//
//    func returnEdge() -> [Int] {
//        var result = [Int]()
//        var current: SingleNode! = head
//        if current.val == nil {
//            return [0]
//        } else {
//            while current.next =
//        }
//    }
    //MARK: - remove from linkedList
    func remove(value: T) {
        var current: SingleNode! = head
        var previous: SingleNode! = head
        if current.val == value{
            if head.next == nil {
                head.val = nil
            } else {
                head = head.next!
            }
            current = head
        } else {
            while current.val != value && current.next != nil {
                previous = current
                current = current.next
            }
            if current.next == nil && current.val != value {
                print("There is no Match Elements in LinkedList")
            } else if current.next == nil {
                previous.next = nil
            } else {
                previous.next = current.next
            }
        }
    }
}
