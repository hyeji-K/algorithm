//
//  1236.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/07.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
var array: [[String]] = []
for _ in 0..<input[0] {
    let input = readLine()!.map { String($0) }
    array.append(input)
}

var result: Int = 0
var resultArray: [String] = [String](repeating: ".", count: input[1])

for i in array {
    if i.contains("X") {
        for j in 0..<i.count {
            if i[j] == "X" {
                resultArray[j] = "X"
            }
        }
    } else {
        result += 1
    }
}

if resultArray.contains(".") {
    let numberOfDot = resultArray.filter { $0 == "." }.count
    if numberOfDot > result {
        result += numberOfDot - result
    }
}

print(result)

// 시간복잡도 O(NM)

/* 강의
 1. 각 행/열에 대해 경비원이 있는지 확인한다
 2. 보호받지 못하는 행/열의 개수를 구한다
 3. 둘 중 큰 값을 출력한다
 

var rowExist: [Bool] = Array(repeating: false, count: input[0])
var colExist: [Bool] = Array(repeating: false, count: input[1])
for i in 0..<input[0] {
    for j in 0..<input[1] {
        if array[i][j] == "X" {
            rowExist[i] = true
            colExist[j] = true
        }
    }
}

var rowNeedCount = input[0]
var colNeedCount = input[1]
for i in 0..<input[0] {
    if rowExist[i] {
        rowNeedCount -= 1
    }
}
for i in 0..<input[1] {
    if colExist[i] {
        colNeedCount -= 1
    }
}

print(max(rowNeedCount, colNeedCount))
 */
