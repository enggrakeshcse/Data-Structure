//
//  DoublyLinkedList.swift
//  Single-Linked-List
//
//  Created by Rakesh on 01/08/19.
//

import Foundation

class DoublyNode<T: Equatable> {
    var val: T?
    var next: DoublyNode?
    var previous: DoublyNode?
}
class DoublyLinkedList<T: Equatable> {
    var head = DoublyNode<T>()
    func insertFromEnd(value: T){
        if head.val == nil {
            head.val = value
        } else {
            var lastNode: DoublyNode =  head
            while lastNode.next != nil {
                lastNode = lastNode.next!
            }
            let newNode = DoublyNode<T>()
            newNode.val = value
            lastNode.next = newNode
            newNode.previous = lastNode
        }
    }
    func printAllElement() {
        var current: DoublyNode = head
        if current.val == nil {
            print("There is no element in LinkedList")
        } else {
        while current.next != nil {
            print(current.val!)
            current = current.next!
            }
        print(current.val!)
        }
    }
    func remove(value: T) {
        var current: DoublyNode = head
        var previous: DoublyNode = head
        if current.val == value {
            if current.next == nil {
                head.val = nil
            } else {
                head = head.next!
                head.previous = nil
            }
            current = head
        } else {
            while current.val != value && current.next != nil {
                previous = current
                current = current.next!
            }
            if current.next == nil && current.val != value {
                print("There is no Match Element in Doubly LinkedList")
            } else if current.next == nil && current.val == value {
                previous.next = nil
            } else {
                current = current.next!
                previous.next = current
                current.previous = previous
            }
        }
    }
}

