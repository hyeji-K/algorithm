//
//  16.배열회전시키기.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/11.
//

import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var result: [Int] = []
    switch direction {
    case "right":
        result.append(numbers.last!)
        for i in 0..<numbers.count - 1 {
            result.append(numbers[i])
        }
        return result
    case "left":
        for i in 1..<numbers.count {
            result.append(numbers[i])
        }
        result.append(numbers.first!)
        return result
    default:
        return result
    }
}
