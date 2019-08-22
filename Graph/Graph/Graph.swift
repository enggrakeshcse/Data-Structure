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
        graph.addListArray[scr].insert(value: des)
        graph.addListArray[des].insert(value: scr)
    }
    func printGraph(graph: Graph) {
        for vertex in 0..<graph.v {
            print("Adjacency list of vertex \(vertex) ")
            print("head")
            graph.addListArray[vertex].printAllElemetArray()
            print("")
        }
    }
}
