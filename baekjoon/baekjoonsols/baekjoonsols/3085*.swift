//
//  3085.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/14.
//

import Foundation

/*
 1. 가능한 인접한 서로 다른 사탕의 모든 쌍을 서로 교환한다.
 2. 교환한 상태에서 가장 긴 연속 부분 행/열을 찾는다.
 3. 교환한 사탕을 원복한다.
 */

let input = readLine()!
var array: [[String]] = []
for i in 0..<Int(input)! {
    let row = readLine()!.components(separatedBy: " ")
    array.append(row)
}

func swapmap(_ resource: [[String]], _ row: Int, _ column: Int) -> [[String]] {
    var array = resource
    if array[row][column] != array[row][column + 1] {
        let temp = array[row][column]
        array[row][column] = array[row][column + 1]
        array[row][column + 1] = temp
    }
    return array
}

for i in 0..<Int(input)! - 1 {
    for j in 0..<Int(input)! - 1 {
        // i = 0, j = 0 -> array[i][j]
        let swapArray = swapmap(array, i, j)


    }
}
