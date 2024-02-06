//
//  2798.swift
//  baekjoonsols
//
//  Created by heyji on 2024/02/06.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]
let cards = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
var ans: Int = 0

for i in 0..<n {
    for j in 0..<n {
        for k in 0..<n {
            if j != i && j != k && k != i {
                var sum: Int = cards[i] + cards[j] + cards[k]
                if sum <= m {
                    if ans < sum {
                        ans = sum
                    }
                }
            }
        }
    }
}

print(ans)
