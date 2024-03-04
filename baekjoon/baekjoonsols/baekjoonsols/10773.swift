//
//  10773.swift
//  baekjoonsols
//
//  Created by heyji on 2024/03/04.
//

import Foundation

let input = Int(readLine()!)!
var s: [Int] = []
for _ in 0..<input {
    let input = Int(readLine()!)!
    if input == 0 {
        s.removeLast()
    } else {
        s.append(input)
    }
}

print(s.reduce(0, +))
