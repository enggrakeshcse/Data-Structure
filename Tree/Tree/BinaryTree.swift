//
//  BinaryTree.swift
//  Tree
//
//  Created by Rakesh on 12/08/19.
//  Copyright © 2019 Rakesh. All rights reserved.
//

import Foundation

//MARK: - Implementation of Binary Tree in swift
//MARK: - Traverse inorder, Preorder and postorder in tree

class Node<T: Equatable> {
    var data: T?
    var leftChild: Node?
    var rightChild: Node?
    init(data: T? = nil, leftChild: Node? = nil, rightChild: Node? = nil) {
        self.data = data
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}
class BinaryTree<T: Equatable> {
    func preorderTraversal(_ root: Node<Int>?) -> [Int] {
        if root == nil {
            return []
        }
        var result: [Int] = []
        result.append((root?.data!)!)
        result += preorderTraversal(root!.leftChild)
        result += preorderTraversal(root!.rightChild)
        return result
    }
    
    func inorderTraversal(_ root: Node<Int>?) -> [Int] {
        if root == nil {
            return []
        }
        var result: [Int] = []
        result += inorderTraversal(root!.leftChild)
        result.append(root!.data!)
        result += inorderTraversal(root!.rightChild)
        return result
    }
    
    func postorderTraversal(_ root: Node<Int>?) -> [Int] {
        if root == nil {
            return []
        }
        var result: [Int] = []
        result += postorderTraversal(root!.leftChild)
        result += postorderTraversal(root!.rightChild)
        result.append(root!.data!)
        return result
    }
}
extension Node {
    var count: Int? {
        let left = self.leftChild?.count ?? 0
        let right = self.rightChild?.count ?? 0
        return left + right + 1
    }
    var description: String{
        return "value = \(String(describing: self.data ?? nil)) LeftChild = \(String(describing: self.leftChild?.data ?? nil)) RightChild = \(String(describing: self.rightChild?.data ?? nil))"
    }
}
