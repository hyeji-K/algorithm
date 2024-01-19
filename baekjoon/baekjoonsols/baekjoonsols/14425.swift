//
//  14425.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/19.
//

import Foundation

// MARK: 이분탐색 - 문자열 집합
// 입력
let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let n: Int = input[0]
let m: Int = input[1]
var stringArray: Set<String> = []
for _ in 0..<n {
    let input = readLine()!
    stringArray.insert(input)
}

// 이분탐색을 위해 정렬
let sortedStringArray = stringArray.sorted(by: <)

var checkedStringArray: [String] = []
for _ in 0..<m {
    let input = readLine()!
    checkedStringArray.append(input)
}

// sortedStringArray에 포함되어 있는 것 개수 세기
var ans: Int = 0
for i in checkedStringArray {
    var left: Int = 0
    var right: Int = sortedStringArray.count - 1
    while left <= right {
        var half = (left + right) / 2
        if sortedStringArray[half] == i {
            ans += 1
            break
        } else if i > sortedStringArray[half] {
            left = half + 1
        } else if i < sortedStringArray[half] {
            right = half - 1
        }
    }
}

// 출력
print(ans)



// Set.contains 사용 
let ans = checkedStringArray.filter { stringArray.contains($0) }.count

let ans = (0..<m).filter { _ in stringArray.contains(readLine()!) }.count
