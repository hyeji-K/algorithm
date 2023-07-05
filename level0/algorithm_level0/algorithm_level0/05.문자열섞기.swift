//
//  ss.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/05.
// MARK: 문자열 섞기

import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    let str1Array: [String] = str1.map { String($0) }
    let str2Array: [String] = str2.map { String($0) }
    var result: String = ""
    for i in 0..<str1.count {
        result += str1Array[i] + str2Array[i]
    }
    return result
}

print(solution("aaaaa", "bbbbb"))


// MARK: 다른 사람 풀이 참고
func solution2(_ str1:String, _ str2:String) -> String {
    return zip(str1, str2).map { String($0) + String($1) }.joined()
}


