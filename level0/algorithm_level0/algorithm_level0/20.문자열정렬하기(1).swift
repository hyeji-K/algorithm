//
//  20.문자열정렬하기(1).swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/13.
//

import Foundation

func solution(_ my_string:String) -> [Int] {
    var numbers: [Int] = []
    for i in my_string.unicodeScalars {
        if i.value < 65 {
            numbers.append(Int(String(i))!)
        }
    }
    return numbers.sorted()
}

func solution(_ my_string:String) -> [Int] {
    return my_string.filter { $0.isNumber }.map { Int(String($0))! }.sorted()
}
