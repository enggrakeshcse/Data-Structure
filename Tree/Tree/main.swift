//
//  main.swift
//  Tree
//
//  Created by Rakesh on 12/08/19.
//  Copyright © 2019 Rakesh. All rights reserved.
//

import Foundation
// MARK: - Binary Tree
//let nine = Node<Int>(data: 9)
//let ten = Node<Int>(data: 10)
//let seven = Node<Int>(data: 7)
//let eight = Node<Int>(data: 8)
//let ele = Node<Int>(data: 11)
//let twe = Node<Int>(data: 12)
//let thi = Node<Int>(data: 13)
//let fourteen = Node<Int>(data: 14)
//let three = Node<Int>(data: 3, leftChild: seven, rightChild: eight)
//let four = Node<Int>(data: 4, leftChild: nine, rightChild: ten)
//let five = Node<Int>(data: 5, leftChild: ele, rightChild: twe)
//let six = Node<Int>(data: 6, leftChild: thi, rightChild: fourteen)
//let one = Node<Int>(data: 1, leftChild: three, rightChild: four)
//let two = Node<Int>(data: 2, leftChild: five, rightChild: six)
//let zero = Node<Int>(data: 0, leftChild: one, rightChild: two)
//let binaryTree = BinaryTree<Int>()
//print(binaryTree.inorderTraversal(zero))
//print(binaryTree.preorderTraversal(zero))
//print(binaryTree.postorderTraversal(zero))
//print(zero.count ?? 0)
//print(one.count ?? 0)
//print(zero.description)

// MARK: - Binary Search Tree
let binarySearchTree = BinarySearchTree()
var root = Node<Int>()
root = binarySearchTree.insert(elements: 50, root: root)
root = binarySearchTree.insert(elements: 30, root: root)
root = binarySearchTree.insert(elements: 20, root: root)
root = binarySearchTree.insert(elements: 40, root: root)
root = binarySearchTree.insert(elements: 70, root: root)
root = binarySearchTree.insert(elements: 60, root: root)
root = binarySearchTree.insert(elements: 80, root: root)
let binaryTree = BinaryTree<Int>()
print(binaryTree.inorderTraversal(root.rightChild))
print(binaryTree.postorderTraversal(root.rightChild))
print(binaryTree.preorderTraversal(root.rightChild))
if let root = binarySearchTree.searchElements(elements: 40, root: root.rightChild) {
    print(root.data ?? 0)
} else {
    print("not found")
}
if let root = binarySearchTree.searchElements(elements: 100, root: root.rightChild) {
    print(root.data ?? 0)
} else {
    print("not found")
}
binarySearchTree.removeElements(data: 20, root: root.rightChild)
print(binaryTree.inorderTraversal(root))
print(binaryTree.preorderTraversal(root))
print(binaryTree.postorderTraversal(root))
binarySearchTree.removeElements(data: 30, root: root.rightChild)
print(binaryTree.inorderTraversal(root))
print(binaryTree.preorderTraversal(root))
print(binaryTree.postorderTraversal(root))
binarySearchTree.removeElements(data: 50, root: root.rightChild)
print(binaryTree.inorderTraversal(root))
print(binaryTree.preorderTraversal(root))
print(binaryTree.postorderTraversal(root))

