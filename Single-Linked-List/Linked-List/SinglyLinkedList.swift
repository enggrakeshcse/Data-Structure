//
//  Question1.swift
//  Single-Linked-List
//
//  Created by Rakesh on 01/08/19.
//

import Foundation

//MARK: - Linked list Node
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
                print(current.val!)
                current = current.next
            }
            print(current.val!)
        }
    }
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
    //MARK: - implements Question1
    //How do you find the middle element of a singly linked list in one pass?
    func Solution1(linkedList: SingleLinkedList<T>) {
        var middlenode: SingleNode! = head
        var current: SingleNode! = head
    
        var length = 0
        while current.next != nil {
            length += 1
            if length%2 == 0 {
                middlenode = middlenode.next
            }
            current = current.next
        }
        
        print("length on linkedlist is \(length + 1)")
        if length%2 == 1 {
            print("Data in middle \(middlenode.val!) \(middlenode.next!.val!)")
            //middlenode = middlenode.next
            
        } else {
            print("Data in middle \(middlenode.val!)")
        }
    }
}

