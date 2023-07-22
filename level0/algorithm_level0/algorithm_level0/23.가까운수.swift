//
//  23.가까운수.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/22.
//

import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    let sortedArray: [Int] = array.sorted()
    var result: [Int] = []
    for i in sortedArray {
        result.append(abs(n - i))
    }
    let sortedIndex = result.firstIndex(of: result.min()!)!
    let index = array.firstIndex(of: sortedArray[sortedIndex])!
    return array[index]
}

print(solution([3, 21, 19], 20))


// array.min(by: { (abs($0 - n), $0) < (abs($1 - n), $1) })!
