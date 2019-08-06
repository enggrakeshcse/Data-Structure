//
//  Stack.swift
//  Stack
//
//  Created by Rakesh on 06/08/19.
//  Copyright © 2019 Rakesh. All rights reserved.
//
import Foundation
class Node<T: Equatable> {
    var val: T?
    var next: Node?
}
class Stack<T: Equatable> {
    var head = Node<T>()
    var StackArray = [T]()
    // MARK: - using Linked List
    init() {
        self.head.next = nil
    }
    func pushThroughLinkedList(value: T) {
        let newNode = Node<T>()
        newNode.val = value
        newNode.next = head.next
        head.next = newNode
    }
    func printAllElemetLinkedList() {
        var current: Node! = head.next
        if current == nil {
            print("There is no element in Linked List ")
        } else {
            while current.next != nil {
                print(current.val ?? "")
                current = current.next
            }
            print(current.val ?? "")
        }
    }
    func popThroughLinkedList() {
        if let head1 = head.next {
            head = head1
            print(head.val ?? "")
            head.val = nil
        } else {
            print("underflow")
        }
    }
    // MARK: - using Array
    func push(value: T) {
        self.StackArray.append(value)
    }
    func pop(){
        if self.StackArray.last != nil {
           let returnElement = self.StackArray.last
            self.StackArray.removeLast()
           // print(returnElement!)
        } else {
           // print("underflow occurs")
        }
    }
    func isEmpty() -> Bool {
        return self.StackArray.isEmpty
    }
    func Top() -> T {
        return self.StackArray.last as! T
    }
    func printAllElementsInStack() {
        if self.StackArray.isEmpty {
            print("There is no Element in Stack")
        } else {
            for element in self.StackArray {
                print(element, separator: " ", terminator: " ")
            }
            print("")
        }
    }
    //MARK : - Question1
    //Check if given expression is balanced expression or not?
    func Solution1(arrInput: String) -> Bool {
        print(arrInput)
        let stack = Stack<Character>()
        print(arrInput)
        for element in arrInput{
            if element == "(" || element == "{" || element == "[" {
                stack.push(value: element)
               // print(stack.printAllElementsInStack())
                continue
            }
            if stack.isEmpty() {
                return false
            }
            
            switch element {
            case ")":
                let x = stack.Top()
                stack.pop()
                if x == "[" || x == "{" {
                    return false
                }
                
            case "}":
                let x = stack.Top()
                stack.pop()
                if x == "[" || x == "(" {
                    return false
                }
            case "]":
                let x = stack.Top()
                stack.pop()
                if x == "(" || x == "{" {
                    return false
                }
                
            default:
                break
            }
        }
        return stack.isEmpty()
    }
}
