//
//  SortArray.swift
//  Sort-Algo
//
//  Created by Rakesh on 02/08/19.
//  Copyright © 2019 Rakesh. All rights reserved.
//

import Foundation
class SortAlgo {
    //MARK: - Swap
    func Swap(i: Int, j: Int, inputArr: inout [Int]) {
        let temp = inputArr[i]
        inputArr[i] = inputArr[j]
        inputArr[j] = temp
    }
    //MARK: - Implements of SelectionSort
    func SelectionSort(inputArr: inout [Int]) -> [Int] {
        for outer_index in 0..<inputArr.count - 1 {
            for inner_index in outer_index + 1..<inputArr.count {
                if inputArr[inner_index] < inputArr[outer_index] {
                    Swap(i: outer_index, j: inner_index, inputArr: &inputArr)
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
                    Swap(i: outer_index, j: inner_index, inputArr: &inputArr)
                }
            }
        }
        return inputArr
    }
    //MARK: - Implements of BubbleSort
    func BubbleSort(inputArr: inout [Int]) -> [Int] {
        for outer_index in 0..<inputArr.count - 1 {
            for inner_index in 0..<inputArr.count - outer_index - 1 {
                if inputArr[inner_index + 1] < inputArr[inner_index] {
                    Swap(i: inner_index + 1, j: inner_index, inputArr: &inputArr)
                }
            }
        }
        return inputArr
    }
}
