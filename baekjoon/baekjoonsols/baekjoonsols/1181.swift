//
//  1181.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/14.
//

import Foundation

// 입력 - 단어의 개수(1 ≤ N ≤ 20,000), 알파벳 소문자로 이루어진 단어
let count = readLine()!
var array: [String] = []
for _ in 1...Int(count)! {
    let input = readLine()!
    array.append(input)
}

// 정렬 - 길이가 짧은 것부터, 길이가 같으면 사전 순
let sortedArray = array.sorted { $0.count == $1.count ? $0 < $1 : $0.count < $1.count }

// 중복된 단어는 하나만 남기고 제거
print(sortedArray[0])
for i in 1..<sortedArray.count {
    if sortedArray[i] == sortedArray[i - 1] {
        continue
    }
    print(sortedArray[i])
}
