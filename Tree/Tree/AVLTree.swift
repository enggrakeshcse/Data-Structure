//
//  AVLTree.swift
//  Tree
//
//  Created by Rakesh on 14/08/19.
//  Copyright © 2019 Rakesh. All rights reserved.
//

import Foundation

class AvlNode {
    var data: Int?
    var left: AvlNode?
    var right: AvlNode?
    var height: Int?
}
class AVLTree {
    func newNode(data: Int) -> AvlNode{
        let node = AvlNode()
        node.data = data
        node.left = nil
        node.right = nil
        node.height = 1
        return node
    }
    func max(a: Int, b: Int) ->Int{
        return a > b ? a : b
    }
    func height(node: AvlNode?) ->Int{
        return node == nil ? 0 : (node?.height ?? 1)
    }
    func getBalanceTree(node: AvlNode?) -> Int {
        return node == nil ? 0 : height(node: node?.left) - height(node: node?.right)
    }
    func leftRotate(node: AvlNode?) -> AvlNode {
        let y = node?.right
        let t = y?.left
        y?.left = node
        node?.right = t
        node?.height = 1 + max(a: height(node: node?.left), b: height(node: node?.right))
        y?.height = 1 + max(a: height(node: y?.left), b: height(node: y?.right))
        return y ?? AvlNode()
    }
    func rightRotate(node: AvlNode?) -> AvlNode {
        let x = node?.left
        let t2 = x?.right
        x?.right = node
        node?.left = t2
        x?.height = 1 + max(a: height(node: x?.left), b: height(node: x?.right))
        node?.height = 1 + max(a: height(node: node?.left), b: height(node: node?.right))
        return x ?? AvlNode()
    }
    func insert(data: Int, node: AvlNode?) -> AvlNode{
        if node == nil {
            return newNode(data: data)
        }
        if (node?.data ?? 0) > data {
            node?.left = insert(data: data, node: node?.left)
        } else if (node?.data ?? 0) < data {
            node?.right = insert(data: data, node: node?.right)
        } else {
            return node ?? AvlNode()
        }
        node?.height = 1 + max(a: height(node: node?.left), b: height(node: node?.right))
        let balance = getBalanceTree(node: node)
        // Left Left case
        if balance > 1 && data < (node?.left?.data ?? 0) {
            return rightRotate(node: node)
        }
        // left right case
        if balance > 1 && data > (node?.left?.data ?? 0) {
            node?.left = leftRotate(node: node?.left)
            return rightRotate(node: node)
        }
        // right right case
        if balance < -1 && data < (node?.right?.data ?? 0) {
            return leftRotate(node: node)
        }
        // right left case
        if balance < -1 && data > (node?.right?.data ?? 0) {
            node?.right = rightRotate(node: node?.right)
            return leftRotate(node: node)
        }
        return node ?? AvlNode()
    }
}
