//
//  11047.swift
//  baekjoonsols
//
//  Created by heyji on 2024/02/21.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var k = input[1]
var array: [Int] = []
for _ in 0..<input[0] {
    let input = Int(readLine()!)!
    array.append(input)
}

var num = array.count - 1
var count: Int = 0
while k > 0 {
    if k >= array[num] {
        k -= array[num]
        count += 1
    } else {
        num -= 1
    }
}

print(count)
