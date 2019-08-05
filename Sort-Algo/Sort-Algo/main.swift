//
//  main.swift
//  Sort-Algo
//
//  Created by Rakesh on 02/08/19.
//  Copyright © 2019 Rakesh. All rights reserved.
//

import Foundation
print("Enter your input")
var arrinput = readLine()!.split(separator: " ").map{(Int(String($0)))!}
let sortalgo = SortAlgo()
sortalgo.MergeSort(inputArr: &arrinput, l: 0, r: arrinput.count - 1)
print(arrinput)
//print(sortalgo.BubbleSort(inputArr: &arrinput))
//print(sortalgo.SelectionSort(inputArr: &arrinput))
//print(sortalgo.InsertionSort(inputArr: &arrinput))

