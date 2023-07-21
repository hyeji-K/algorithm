//
//  22.컨트롤제트.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/21.
//

import Foundation

func solution(_ s:String) -> Int {
    var sArray = s.components(separatedBy: " ")
    var result: Int = 0
    
    for i in 0..<sArray.count {
        if sArray[i] == "Z" {
            result -= Int(sArray[i-1])!
        } else {
            result += Int(sArray[i])!
        }
    }
    return result
}

// 다른 사람의 풀이 -> '스택'으로 해결
func solution2(_ s:String) -> Int {
    var stack: [Int] = []

    s.components(separatedBy: " ").forEach {
        if $0 == "Z" {
            stack.popLast()
        } else {
            stack.append(Int($0)!)
        }
    }

    return stack.reduce(0, +)
}

