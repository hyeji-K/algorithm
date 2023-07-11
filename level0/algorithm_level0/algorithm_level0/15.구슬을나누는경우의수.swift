//
//  15.구슬을나누는경우의수.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/10.
//

import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    var result: Int = 1
    var ballsArray: [Int] = (1...balls).map { $0 }.reversed()
    var shareArray: [Int] = (1...share).map { $0 }
    var ballsAshareArray: [Int] = []
    if balls - share > 0 {
        ballsAshareArray = (1...(balls - share)).map { $0 }
    }
    
    if share < (balls - share) {
        ballsArray = ballsArray.filter { !ballsAshareArray.contains($0) }
        for i in 0..<ballsArray.count {
            result *= ballsArray[i]
            result /= shareArray[i]
        }
    } else {
        ballsArray = ballsArray.filter { !shareArray.contains($0) }
        for i in 0..<ballsArray.count {
            result *= ballsArray[i]
            if balls - share > 1 {
                result /= ballsAshareArray[i]
            }
        }
    }
    
    return result
}


// 60점
func solution2(_ balls:Int, _ share:Int) -> Int {
    var result: Int = 1
    for i in 1...balls {
        result *= i
    }
    for i in 1...share {
        result /= i
    }
    if balls - share != 0 {
        for i in 1...(balls - share) {
            result /= i
        }
    }
    return result
}


// 88.6점 - 오버플로우 문제
func solution3(_ balls:Int, _ share:Int) -> Int {
    var result: Int = 1
    var ballsArray: [Int] = (1...balls).map { $0 }
    var shareArray: [Int] = (1...share).map { $0 }

    for i in 1...balls {
        if shareArray.contains(i) {
            continue
        }
        result *= i
    }
    if balls - share > 0 {
        for i in 1...(balls - share) {
            result = result / i
        }
    }
    return result
}



// 참고
// 순열: n개의 원소를 갖는 집합에서 r개 원소를 순서를 고려하여 뽑는 경우의 수
// P(n, r) = n! / (n-r)!
// 조합: n개의 원소를 갖는 집합에서 r개의 원소를 순서 없이 뽑는 경우의 수
// C(n, r) = n! / ((n-r)! * r!)
// n! / (n-r)! = (r...n).reduce(1, *)
// r! = (1...r).reduce(1, *)

let balls = 5
let share = 3
var result = 1

for i in 1...share {
    result *= (balls - i + 1)
    result /= i
}

// 재귀함수
func factorial(_ num: Int) -> Int {
    if num < 1 {
        return 1
    }
    return (num * factorial(num - 1))
}
