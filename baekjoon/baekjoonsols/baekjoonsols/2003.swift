//
//  2003.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/25.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let m: Int = input[1]
let inputArray = readLine()!.components(separatedBy: " ").map { Int(String($0))! }

var right: Int = 0
var sum = inputArray[0]
var ans: Int = 0
for i in 0..<inputArray.count {
    while sum < m && right < inputArray.count - 1 {
        right += 1
        sum += inputArray[right]
    }
    if sum == m {
        ans += 1
    }
    sum -= inputArray[i]
}

print(ans)
