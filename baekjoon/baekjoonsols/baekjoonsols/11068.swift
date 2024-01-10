//
//  11068.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/10.
//

import Foundation

let input = readLine()!

func isPalindrome(_ number: Int) -> Bool {
    for i in 2...64 {
        var number = number
        var result: [Int] = []
        while number > 0 {
            result.append(number % i)
            number /= i
        }
        if result == result.reversed() {
            return true
        }
    }
    return false
}

var ans: [Int] = []
for i in 0..<Int(input)! {
    let number = Int(readLine()!)!
    ans.append(isPalindrome(number) ? 1 : 0)
}

ans.map { print($0) }

// Tip: 그대로 String으로 이어 붙이면, 2자릿수 이상의 숫자때문에 회문이 아니게 될 수 있다.
