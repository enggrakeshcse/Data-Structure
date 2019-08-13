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
    func searchElements(elements: Int, root: Node<Int>?) -> Bool {
        var result = false
        if root?.data == elements {
            result = true
        } else {
            if (root?.data ?? 0) < elements && root?.rightChild != nil{
                result = searchElements(elements: elements, root: root?.rightChild)
            } else if (root?.data ?? 0) > elements && root?.leftChild != nil  {
                result = searchElements(elements: elements, root: root?.leftChild)
            }
        }
        return result
    }
    
}
