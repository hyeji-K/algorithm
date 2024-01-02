//
//  1919.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/02.
//

import Foundation

let input1 = readLine()!
let input2 = readLine()!

func checkItem(input1: String, input2: String) -> Int {
    var arr1 = input1.map { $0 }
    var arr2 = input2.map { $0 }
    var result: Int = 0
    
    for i in arr1 {
        if arr2.contains(i) {
            let index = arr2.firstIndex(of: i)!
            arr2.remove(at: index)
        } else {
            result += 1
        }
    }
    return result
}

print(checkItem(input1: input1, input2: input2) + checkItem(input1: input2, input2: input1))


// 다른 풀이
// 받은 문자열의 각각의 알파벳 갯수 세기
func getAlphabetCountArray(str: String) -> [Int] {
    var alpabetCount: [Int] = []
    for i in 0..<26 {
        alpabetCount.append(0)
    }
    
    for i in str {
        let index = Int(UnicodeScalar(String(i))!.value)
        alpabetCount[index - 97] += 1
    }
    return alpabetCount
}

let first = getAlphabetCountArray(str: input1)
let second = getAlphabetCountArray(str: input2)
var result: Int = 0

for i in 0..<26 {
    result += abs(first[i] - second[i])
}
print(result)
