//
//  8958.swift
//  baekjoonsols
//
//  Created by heyji on 2024/02/17.
//

import Foundation

let n = Int(readLine()!)!
for _ in 0..<n {
    let input = readLine()!.map { String($0) }
    var ans: Int = 0
    var number: Int = 0
    for i in 0..<input.count {
        if input[i] == "O" {
            number += 1
        } else {
            number = 0
        }
        ans += number
    }
    print(ans)
}
