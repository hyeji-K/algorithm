//
//  main.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/04.
// MARK: 사람의 수 n과 한 판에 6조각이 나오는 피자의 최소공배수를 구한다

import Foundation

func solution(_ n:Int) -> Int {
    let pieceOfPizza: Int = 6
    let lcm: Int = n * pieceOfPizza / gcd(n, pieceOfPizza)
    let countOfPizza: Int = lcm / pieceOfPizza
    return countOfPizza
}

func gcd(_ number1: Int, _ number2: Int) -> Int {
    var mod: Int = max(number1, number2) % min(number1, number2)
    return mod == 0 ? min(number1, number2) : gcd(min(number1, number2), mod)
}
