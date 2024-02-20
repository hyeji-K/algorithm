//
//  2164.swift
//  baekjoonsols
//
//  Created by heyji on 2024/02/20.
//

import Foundation

// MARK: 시간초과
let input = Int(readLine()!)!
var num: String = ""
for i in 1...input {
    num += "\(i)"
}

while num.count > 1 {
    num.removeFirst()
    let first = num.removeFirst()
    num += "\(first)"
}

print(num)
