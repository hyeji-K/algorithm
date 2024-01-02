//
//  1157.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/02.
//

import Foundation

let input = readLine()!.uppercased()

func getAlphabetCountArray(str: String) -> [Int] {
    var alpabetCount: [Int] = []
    for _ in 0..<26 {
        alpabetCount.append(0)
    }
    
    for i in str {
        let index = Int(UnicodeScalar(String(i))!.value)
        alpabetCount[index - 65] += 1
    }
    return alpabetCount
}

let arr = getAlphabetCountArray(str: input)
let max = arr.max()!
let count = arr.filter { $0 == max }.count
if count == 1 {
    let index = arr.firstIndex(of: max)!
    let result = index + 65
    print(String(UnicodeScalar(result)!))
} else {
    print("?")
}

/*
 1. 각 알파벳의 개수를 구한다
 2. 그 중 최댓값을 구한다
 */
