//
//  main.swift
//  Queue
//
//  Created by Rakesh on 06/08/19.
//  Copyright © 2019 Rakesh. All rights reserved.
//

import Foundation

let object = Queue<Int>()
object.PrintAllElementInQueue()
object.Dequeue()
object.Enqueue(value: 2)
object.PrintAllElementInQueue()
object.Dequeue()
object.PrintAllElementInQueue()
object.Enqueue(value: 2)
object.Enqueue(value: 3)
object.Enqueue(value: 4)
object.PrintAllElementInQueue()


