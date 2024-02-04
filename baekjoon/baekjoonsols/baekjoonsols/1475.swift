//
//  1475.swift
//  baekjoonsols
//
//  Created by heyji on 2024/02/04.
//

import Foundation

let input = readLine()!.map { Int(String($0))! }
var sets: [Int] = Array(repeating: 0, count: 10)
var count: Int = 0
for i in input {
    if i == 9 || i == 6 {
        if sets[9] == sets[6] {
            sets[i] += 1
        } else if sets[9] > sets[6] {
            sets[6] += 1
        } else {
            sets[9] += 1
        }
    } else {
        sets[i] += 1
    }
}

print(sets.max()!)
