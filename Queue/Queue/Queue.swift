//
//  Queue.swift
//  Queue
//
//  Created by Rakesh on 06/08/19.
//  Copyright © 2019 Rakesh. All rights reserved.
//

import Foundation

class Node<T: Equatable> {
    
}
class Queue<T: Equatable> {
    //MARK: - implements Queue using LinkedList

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
