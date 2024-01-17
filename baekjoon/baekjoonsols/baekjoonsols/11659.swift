//
//  11659.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/17.
//

import Foundation

// MARK: 구간합 - 구간 합 구하기 4
// 입력 - 첫째 줄에 수의 개수 N과 합을 구해야 하는 횟수 M, 둘째 줄에는 N개의 수, 셋째 줄부터 M개의 줄에는 합을 구해야 하는 구간 i와 j가 주어진다.
let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let array = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let count: Int = input[1]
var sumArray: [Int] = []
var result: [Int] = []

// 1. 구간마다 합을 구해서 배열에 삽입
// 주어지는 구간의 조건이 1 ≤ i ≤ j ≤ N 이기 때문에 0번째 인덱스에 0 삽입
sumArray.append(0)
for i in 0..<array.count {
    let sum = sumArray[i] + array[i]
    sumArray.append(sum)
}

// 주어진 구간 중에서 뒤에 있는 구간 - (앞에 있는 구간 - 1) 해주면 구간의 합이 됨
for i in 0..<count {
    let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
    let sum = sumArray[input[1]] - sumArray[input[0] - 1]
    result.append(sum)
}

// 출력
result.map { print($0) }
