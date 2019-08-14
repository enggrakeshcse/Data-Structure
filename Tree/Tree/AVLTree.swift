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
    func chackBalanceTree(node: AvlNode?) -> Int {
        return node == nil ? 0 : height(node: node?.left) - height(node: node?.right)
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
        return node!
    }
}
