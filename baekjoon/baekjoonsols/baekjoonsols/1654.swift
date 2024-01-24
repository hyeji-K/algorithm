//
//  1654.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/24.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let number: Int = input[0]
let want: Int = input[1]
var array: [Int] = []
for _ in 0..<number {
    let input = readLine()!
    array.append(Int(input)!)
}

var left: Int = 1
var right: Int = array.max()!
var ans: Int = right
while left <= right {
    let middle = (left + right) / 2
    var count: Int = 0
    for i in array {
        count += (i / middle)
    }
    if count >= want {
        left = middle + 1
        ans = middle
    } else {
        right = middle - 1
    }
}

print(ans)
