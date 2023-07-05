//
//  ss.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/05.
// MARK: 최빈값 구하기 (다른 사람의 풀이 참고)

import Foundation

func solution(_ array:[Int]) -> Int {
    var dictionary: [Int: Int] = [:]
    var result: Int = -1
    
    for i in array.sorted() {
        if dictionary.keys.contains(i) {
            if let oldValue = dictionary[i] {
                dictionary.updateValue(oldValue + 1, forKey: i)
            }
        } else {
            dictionary.updateValue(1, forKey: i)
        }
    }
    var sortedDictionary = dictionary.sorted(by: { $0.value < $1.value })
    if let max = sortedDictionary.popLast() {
        if max.value == sortedDictionary.popLast()?.value {
            return result
        } else {
            result = max.key
        }
    }
    
    return result
}

print(solution([1, 2, 3, 3, 3, 4, 4, 4]))
print(solution([3, 2, 1, 2, 3, 3]))
print(solution([0, 0, 1]))
print(solution([1, 1, 2, 2, 2]))


func solution2(_ array:[Int]) -> Int {
    let group = Dictionary.init(grouping: array) { $0 }
    let sortedGroup = group.sorted { $0.value.count > $1.value.count }
    let maxGroup = sortedGroup.filter { $0.value.count == sortedGroup[0].value.count }
    return maxGroup.count > 1 ? -1 : sortedGroup[0].key
}

print(solution2([1, 1, 2, 2, 2]))
print(solution2([0, 0, 1]))
print(solution2([1, 2, 3, 3, 3, 4, 4, 4]))
