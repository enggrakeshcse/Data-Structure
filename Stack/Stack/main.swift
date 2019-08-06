//
//  main.swift
//  Stack
//
//  Created by Rakesh on 06/08/19.
//  Copyright © 2019 Rakesh. All rights reserved.
//

import Foundation

// Stack implements using Array
let stack = Stack<Int>()
stack.printAllElementsInStack()
stack.push(value: 2)
stack.push(value: 3)
stack.push(value: 4)
stack.printAllElementsInStack()
stack.pop()
stack.printAllElementsInStack()

