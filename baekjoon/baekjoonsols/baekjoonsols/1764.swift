//
//  1764.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/31.
//

import Foundation

// MARK: 1764번 문제
// array로 문제를 풀었을 때는 시간초과가 남
// 그래서 Set으로 푸니 통과되었음

let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
var aArray: Set<String> = []
var bArray: Set<String> = []
for _ in 0..<input[0] {
    let input = readLine()!
    aArray.insert(input)
}
for _ in 0..<input[1] {
    let input = readLine()!
    bArray.insert(input)
}

let result = aArray.filter { bArray.contains($0) }
var ans: String = ""
print(result.count)
result.sorted().map { print($0) }


// 다른 사람의 풀이를 보니 정렬하고 나서 이분탐색을 이용하는 방법도 있는 것 같음
