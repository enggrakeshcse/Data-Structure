//
//  SortArray.swift
//  Sort-Algo
//
//  Created by Rakesh on 02/08/19.
//  Copyright © 2019 Rakesh. All rights reserved.
//

import Foundation
class SortAlgo {
    //MARK: - Implements of SelectionSort
    func SelectionSort(inputArr: inout [Int]) -> [Int] {
        for outer_index in 0..<inputArr.count - 1 {
            for inner_index in outer_index + 1..<inputArr.count {
                if inputArr[inner_index] < inputArr[outer_index] {
                    let temp = inputArr[inner_index]
                    inputArr[inner_index] = inputArr[outer_index]
                    inputArr[outer_index] = temp
                }
            }
        }
        return inputArr
    }
    //MARK: - Implements of InsertionSort
    func InsertionSort(inputArr: inout [Int]) -> [Int] {
        for outer_index in 1..<inputArr.count {
            for inner_index in 0...outer_index {
                if inputArr[inner_index] > inputArr[outer_index] {
                    let temp = inputArr[inner_index]
                    inputArr[inner_index] = inputArr[outer_index]
                    inputArr[outer_index] = temp
                }
            }
        }
        return inputArr
    }
    func BubbleSort(inputArr: inout [Int]) -> [Int] {
        return inputArr
    }
}
