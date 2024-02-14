//
//  1629.swift
//  baekjoonsols
//
//  Created by heyji on 2024/02/14.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int64(String($0))! }
let a = input[0]
var b = input[1]
let c = input[2]

func power(a: Int64, b: Int64) -> Int64 {
    if b == 1 {
        return a % c
    }
    let half: Int64 = power(a: a, b: b/2)
    if b % 2 == 0 {
        return (half * half) % c
    } else {
        return (((half * half) % c) * a) % c
    }
}

print(power(a: a, b: b))
