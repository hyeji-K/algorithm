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


// 다시 풀기
let input = Int(readLine()!)!
var num: [Int] = Array(1...input)
var tmp = 0

if input == 1 {
    print(1)
} else {
    while true {
        num[tmp] = 0
        num.append(num[tmp + 1])
        num[tmp + 1] = 0
        if num[num.count - 2] == 0 {
            print(num.last!)
            break
        }
        tmp += 2
    }
}
