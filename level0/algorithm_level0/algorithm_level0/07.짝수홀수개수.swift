//
//  07.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/06.
//

import Foundation

// 짝수 홀수 개수
func solution(_ num_list:[Int]) -> [Int] {
    var even: Int = 0
    var odd: Int = 0
    for i in num_list {
        if i % 2 == 0 {
            even += 1
        } else {
            odd += 1
        }
    }
    return [even, odd]
}


// 고차함수 이용
let num = [1, 2, 3, 4, 5]
let even = num.filter { $0 % 2 == 0 }.count
let odd = num.filter { $0 % 2 == 1 }.count
