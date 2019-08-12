//
//  Question3.swift
//  Stack
//
//  Created by Rakesh on 06/08/19.
//  Copyright © 2019 Rakesh. All rights reserved.
//

import Foundation
class Queue<T: Equatable> {
    let stackone = Stack<T>()
    let stacktwo = Stack<T>()
    func Enqueue(value: T) {
        while !(stackone.isEmpty) {
            guard let x = stackone.top else {return}
            stacktwo.push(value: x)
            stackone.pop()
        }
        stackone.push(value: value)
        while !(stacktwo.isEmpty) {
            guard let x = stacktwo.top else {return}
            stackone.push(value: x)
            stacktwo.pop()
        }
    }
    func Dequeue() {
        if stackone.isEmpty {
            print("underflow")
        } else {
            guard let x = stackone.top else {return}
            print(x)
            stackone.pop()
        }
    }
}
