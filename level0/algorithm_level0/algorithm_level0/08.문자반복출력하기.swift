//
//  08.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/06.
//

import Foundation

// 문자 반복 출력하기
func solution(_ my_string:String, _ n:Int) -> String {
    var result = my_string.map { String(repeating: $0, count: n) }.reduce("", +)
    return result
}
