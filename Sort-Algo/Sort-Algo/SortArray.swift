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
    //MARK: - Implements of MergeSort
    func Merge(inputArr: inout [Int], s:Int, m:Int, last:Int) {
        var p = s ,q = m + 1
        var start = s
        var Arr = [Int]()
        for _ in 0..<last - start + 1{
            Arr.append(0)
        }
        var k=0
        for _ in start...last {
            //checks if first part comes to an end or not .
            if p > m {
                    Arr[k] = inputArr[q]
                    k += 1
                    q += 1
            }
            //checks if second part comes to an end or not
            else if  q > last {
                    Arr[k] = inputArr[p]
                    k += 1
                    p += 1
            }
            //checks which part has smaller element.
            else if inputArr[ p ] < inputArr[ q ] {
                    Arr[k] = inputArr[p]
                    k += 1
                    p += 1
            }
            
            else {
                    Arr[k] = inputArr[q]
                    k += 1
                    q += 1
            }
        }
        // real array with sorted elements
        for index in 0..<k {
            inputArr[start] = Arr[index]
            start += 1
        }
    
    }
    func MergeSort(inputArr: inout [Int], l: Int, r: Int) {
        if l < r {
            let m = (l + r - 1)/2
            MergeSort(inputArr: &inputArr, l: l, r: m)
            MergeSort(inputArr: &inputArr, l: m + 1, r: r)
            Merge(inputArr: &inputArr, s:l, m:m , last:r)
        }
    }
}
