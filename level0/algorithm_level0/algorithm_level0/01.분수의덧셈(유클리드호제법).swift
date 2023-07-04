//
//  main.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/03.
//  MARK: 유클리드 호제법을 이용한 분수의 덧셈 문제 풀이

import Foundation

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    let numer = numer1 * denom2 + numer2 * denom1
    let denom = denom1 * denom2
    let gcd = euclidean(numer, denom)
    var result: [Int] = []
    result.append(numer / gcd)
    result.append(denom / gcd)
    
    return result
}

func euclidean(_ numer: Int, _ denom: Int) -> Int {
    var quotient: Int = max(numer, denom)
    var remainder: Int = min(numer, denom)
    
    repeat {
        let saveRemainder: Int = remainder
        remainder = quotient % remainder
        quotient = saveRemainder
    } while remainder != 0
    
    return quotient
}

print(solution(1, 2, 3, 4))


// MARK: 유클리드 호제법 다른 사람의 풀이 방식
func getGcd(_ biggerInt: Int, _ smallerInt: Int) -> Int {
    let mod: Int = biggerInt % smallerInt
    return 0 == mod ? min(biggerInt, smallerInt) : getGcd(smallerInt, mod)
}
