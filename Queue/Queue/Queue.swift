//
//  Queue.swift
//  Queue
//
//  Created by Rakesh on 06/08/19.
//  Copyright © 2019 Rakesh. All rights reserved.
//

import Foundation

class Node<T: Equatable> {
    var val: T?
    var next: Node?
    init(value: T) {
        self.val = value
        self.next = nil
    }
}
class Queue<T: Equatable> {
    //MARK: - implements Queue using LinkedList
    var rear: Node<T>? = nil
    var front: Node<T>? = nil
    var isEmptyLinkedList: Bool {
       return front == nil ? true : false
    }
    var peek: T? {
        return front != nil ? front?.val : nil
    }
    var isRareLikedList: T?{
        return rear != nil ? rear?.val : nil
    }
    // Enqueue a Queue
    func EnqueueLinkedList(value: T) {
        let node = Node<T>(value: value)
        if front == nil {
            front = node
            rear = node
        } else {
            rear?.next = node
            rear = node
        }
    }
    // Dequeue a Queue
    func DequeueLinkedList() {
        if front == nil {
            print("underflow condition")
        } else {
            print(front?.val ?? "")
            front = front?.next
            if front == nil {
                rear = nil
            }
        }
    }

    //MARK: - implements Queue using Array
    var QueueArray = [T]()
    var isEmpty: Bool {
        return self.QueueArray.isEmpty
    }
    var isFront: T?{
        return self.QueueArray.first
    }
    var isRare: T?{
        return self.QueueArray.last
    }
    func Enqueue(value: T) {
        self.QueueArray.append(value)
    }
    func Dequeue() {
       if self.QueueArray.first != nil {
           self.QueueArray.removeFirst()
          } else {
                print("underflow occurs")
            }
        }
    func PrintAllElementInQueue() {
          if self.QueueArray.isEmpty {
              print("There is no element in Queue")
          } else {
              for element in self.QueueArray {
                  print(element, separator: " ", terminator: " ")
               }
              print("")
          }
    }
}
