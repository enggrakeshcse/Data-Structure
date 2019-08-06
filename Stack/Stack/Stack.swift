//
//  Stack.swift
//  Stack
//
//  Created by Rakesh on 06/08/19.
//  Copyright © 2019 Rakesh. All rights reserved.
//

import Foundation
class Stack<T: Equatable> {
    var StackArray = [T]()
    func push(value: T) {
        self.StackArray.append(value)
    }
    func pop(){
        if self.StackArray.last != nil {
           let returnElement = self.StackArray.last
            self.StackArray.removeLast()
            print(returnElement!)
        } else {
            print("underflow occurs")
        }
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
}


