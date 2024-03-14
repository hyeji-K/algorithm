//
//  11050.swift
//  baekjoonsols
//
//  Created by heyji on 2024/03/14.
//

import Foundation

func factorial(_ n: Int) -> Int {
    if n < 2 {
        return 1
    }
    return n * factorial(n - 1)
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let k = input[1]

print(factorial(n) / (factorial(k) * factorial(n - k)))
