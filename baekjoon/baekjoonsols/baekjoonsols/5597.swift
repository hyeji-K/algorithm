//
//  5597.swift
//  baekjoonsols
//
//  Created by heyji on 2024/02/25.
//

import Foundation

var array: [Bool] = Array(repeating: false, count: 31)
for _ in 0..<28 {
    let input = Int(readLine()!)!
    array[input] = true
}

for i in 1..<array.count {
    if array[i] == false {
        print(i)
    }
}
