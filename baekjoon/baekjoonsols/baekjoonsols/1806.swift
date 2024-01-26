//
//  1806.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/26.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let list = readLine()!.components(separatedBy: " ").map { Int(String($0))! }

var ans: Int = list.count + 1
var right: Int = 0
var sum: Int = list[0]

for i in 0..<input[0] {
    while sum < input[1] && right < list.count - 1{
        right += 1
        sum += list[right]
    }
    if sum >= input[1] {
        let result = right - i
        if result < ans {
            ans = result + 1
        }
    }
    sum -= list[i]
}
if ans == list.count + 1 {
    print("0")
} else {
    print(ans)
}
