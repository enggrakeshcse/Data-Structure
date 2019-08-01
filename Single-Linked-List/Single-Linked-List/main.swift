//
//  main.swift
//  Single-Linked-List
//
//  Created by Rakesh on 01/08/19.
//

import Foundation

//Single Linked List
let singleLinkedlist = SingleLinkedList<Int>()
singleLinkedlist.insert(value: 2)
singleLinkedlist.insert(value: 3)
singleLinkedlist.insert(value: 4)
singleLinkedlist.printAllElemetArray()
singleLinkedlist.remove(value: 5)
singleLinkedlist.printAllElemetArray()

//Doubly Linked List
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
