//
//  main.swift
//  Single-Linked-List
//
//  Created by Rakesh on 01/08/19.
//

import Foundation

//MARK: - Single Linked List
let singleLinkedlist = SingleLinkedList<Int>()
singleLinkedlist.insert(value: 1)
singleLinkedlist.insert(value: 2)
singleLinkedlist.insert(value: 3)
singleLinkedlist.insert(value: 6)
singleLinkedlist.insert(value: 4)
singleLinkedlist.remove(value: 5)
singleLinkedlist.findThirdNode()
singleLinkedlist.printAllElemetArray()
singleLinkedlist.Solution1()
singleLinkedlist.Solution2()
singleLinkedlist.printAllElemetArray()
//MARK: - Doubly Linked List
let doubleLinkedList = DoublyLinkedList<Int>()
doubleLinkedList.insertFromEnd(value: 1)
doubleLinkedList.insertFromEnd(value: 2)
doubleLinkedList.insertFromEnd(value: 3)
doubleLinkedList.insertFromEnd(value: 4)
doubleLinkedList.printAllElement()
doubleLinkedList.remove(value: 1)
doubleLinkedList.printAllElement()
doubleLinkedList.remove(value: 4)
doubleLinkedList.printAllElement()
doubleLinkedList.remove(value: 5)

let question4 = Question4()
question4.insert(value: 3)
question4.insert(value: -9)
question4.insert(value: 6)
question4.insert(value: -9)
question4.insert(value: 8)
question4.insert(value: 4)
question4.insert(value: -12)
question4.insert(value: 9)
question4.insert(value: 4)
question4.insert(value: 24)
question4.insert(value: 8)
question4.printAllElemetArray()
question4.Solution4()
question4.printAllElemetArray()

