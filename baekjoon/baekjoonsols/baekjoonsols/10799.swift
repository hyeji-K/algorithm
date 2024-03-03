//
//  10799.swift
//  baekjoonsols
//
//  Created by heyji on 2024/03/03.
//

import Foundation

let input = readLine()!.map { String($0) }
var openCount: Int = 0
var ans: Int = 0
for i in 0..<input.count {
    if input[i] == "(" {
        openCount += 1
    } else if input[i] == ")" {
        openCount -= 1
        if input[i - 1] == "(" {
            ans += openCount
        } else {
            ans += 1
        }
    }
}
print(ans)
