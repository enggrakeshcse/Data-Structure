//
//  Graph.swift
//  Graph
//
//  Created by Rakesh on 21/08/19.
//  Copyright © 2019 Rakesh. All rights reserved.
//

import Foundation
class Graph {
    var v: Int = 0
    var addListArray = [SingleLinkedList<Int>]()
    init(vertex: Int) {
        self.v = vertex
        for _ in 0..<v {
            addListArray.append(SingleLinkedList<Int>())
        }
    }
}
class GraphSwift {
    func addEdges(graph: Graph, scr: Int, des: Int) {
        
    }
}
