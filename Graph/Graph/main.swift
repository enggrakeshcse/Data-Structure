//
//  main.swift
//  Graph
//
//  Created by Rakesh on 20/08/19.
//  Copyright © 2019 Rakesh. All rights reserved.
//

import Foundation
let graph = Graph(vertex: 5)
let graphSwift = GraphSwift()
graphSwift.addEdges(graph: graph, scr: 0, des: 1)
graphSwift.addEdges(graph: graph, scr: 0, des: 4)
graphSwift.addEdges(graph: graph, scr: 1, des: 2)
graphSwift.addEdges(graph: graph, scr: 1, des: 3)
graphSwift.addEdges(graph: graph, scr: 1, des: 4)
graphSwift.addEdges(graph: graph, scr: 2, des: 3)
graphSwift.addEdges(graph: graph, scr: 3, des: 4)
graphSwift.printGraph(graph: graph)

