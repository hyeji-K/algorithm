//
//  2675.swift
//  baekjoonsols
//
//  Created by heyji on 2024/02/15.
//

import Foundation

let n = readLine()!
for _ in 0..<Int(n)! {
    let input = readLine()!.split(separator: " ").map { String($0) }
    var ans: String = ""
    let str = input[1].map { String($0) }
    for i in 0..<input[1].count {
        for _ in 0..<Int(input[0])! {
            ans += str[i]
        }
    }
    print(ans)
}

// 다른 풀이
let n = readLine()!
for _ in 0..<Int(n)! {
    let input = readLine()!.split(separator: " ").map { String($0) }
    
    input[1].forEach {
        print(String(repeating: $0, count: Int(input[0])!), terminator: "")
    }
}
