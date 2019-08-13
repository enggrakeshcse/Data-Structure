//
//  BinarySearchTree.swift
//  Tree
//
//  Created by Rakesh on 13/08/19.
//  Copyright © 2019 Rakesh. All rights reserved.
//

import Foundation
class BinarySearchTree {
    //MARK: - insert elements in BinaryTree
    var presentNode : Node<Int>?
    var current : Node<Int>?
    func insert(elements: Int , root: Node<Int>?) -> Node<Int> {
        let newNode = Node<Int>()
        newNode.data = elements
        newNode.leftChild = nil
        newNode.rightChild = nil
        if root == nil {
            return newNode
        } else {
            if (root?.data ?? 0) > elements {
                root?.leftChild = insert(elements: elements, root: root?.leftChild)
            } else {
                root?.rightChild = insert(elements: elements, root: root?.rightChild)
            }
            return root ?? newNode
        }
    }
    // MARK: - Search an element in Binary Tree
    func searchElements(elements: Int, root: Node<Int>?) -> Node<Int>? {
        var result: Node<Int>? = nil
        //presentNode = root
        if root?.data == elements {
            result = root
        } else {
            if (root?.data ?? 0) < elements && root?.rightChild != nil{
                presentNode = root
                result = searchElements(elements: elements, root: root?.rightChild)
            } else if (root?.data ?? 0) > elements && root?.leftChild != nil  {
                presentNode = root
                result = searchElements(elements: elements, root: root?.leftChild)
            }
        }
        return result
    }
    //MARK: - remove elements in Binary Search Tree
    func minValueNode(node: Node<Int>) -> Node<Int> {
        var rootNode = node
        while rootNode.leftChild != nil {
            rootNode = rootNode.leftChild!
        }
        return rootNode
    }
    //MARK: - delete elements in BinaryTree
    func removeElements(data: Int, root: Node<Int>?) {
        current = root
        presentNode = nil
        let currentNode = searchElements(elements: data, root: root)
        if currentNode?.leftChild == nil && currentNode?.rightChild == nil {
            if presentNode?.leftChild?.data == currentNode?.data {
                presentNode?.leftChild = nil
            }  else {
                presentNode?.rightChild = nil
            }
        }else if currentNode?.leftChild != nil && currentNode?.rightChild != nil {
            let succ = minValueNode(node: (currentNode?.rightChild)!)
            let value = succ.data
            removeElements(data: succ.data!, root: root)
            currentNode?.data = value
        } else {
            let child = currentNode?.leftChild != nil ? currentNode?.leftChild : currentNode?.rightChild
            if currentNode?.data == presentNode?.leftChild?.data {
                presentNode?.leftChild = child
            } else {
                presentNode?.rightChild = child
            }
        }
    }
}
