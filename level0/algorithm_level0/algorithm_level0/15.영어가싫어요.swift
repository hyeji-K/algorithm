//
//  15.영어가싫어요.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/22.
//

import Foundation

func solution(_ numbers:String) -> Int64 {
    let alphabet: [String] = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    let number: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    var result: String = ""
    var num: String = ""
    
    for (_, i) in numbers.enumerated() {
        num += String(i)
        if alphabet.contains(num) {
            let index = alphabet.firstIndex(of: num)!
            result += String(number[index])
            num = ""
        }
    }
    
    return Int64(result)!
}
