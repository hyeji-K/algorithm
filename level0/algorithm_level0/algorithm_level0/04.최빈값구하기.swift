//
//  main.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/05.
// MARK: 최빈값 구하기

import Foundation

func solution(_ array:[Int]) -> Int {
    var frequencyArray: [Int] = []
    var setArray: [Int] = []
    var result: Int = -1
    var frequency: Int = 1
    for i in array.sorted() {
        if setArray.isEmpty {
            setArray.append(i)
        } else if setArray.last! == i {
            frequency += 1
        } else {
            setArray.append(i)
            frequencyArray.append(frequency)
            frequency = 1
        }
    }
    frequencyArray.append(frequency)
    
    let max: Int = frequencyArray.max()!
    let index: Int = frequencyArray.firstIndex(of: max)!
    result = setArray[index]
    frequencyArray.remove(at: index)
    if !frequencyArray.isEmpty {
        if max == frequencyArray.max()! {
            return -1
        }
    }
    
    return result
}

print(solution([1, 2, 3, 3, 3, 4, 4, 4]))
print(solution([3, 2, 1, 2, 3, 3]))
print(solution([0, 0, 1]))
print(solution([1, 1, 2, 2, 2]))

// 30점대 -> 결과값을 frequencyArray가 아닌 setArray로 수정해서 75점
// 75점 -> 주어진 배열을 정렬해주니 통과할 수 있었음
