//
//  9012.swift
//  baekjoonsols
//
//  Created by heyji on 2024/03/05.
//

import Foundation

let input = Int(readLine()!)!
for _ in 0..<input {
    let input = readLine()!.map { $0 }
    var s: [Character] = []
    for i in 0..<input.count {
        if input[i] == "(" {
            s.append(input[i])
        } else if input[i] == ")" {
            if s.last == "(" {
                s.removeLast()
            } else {
                s.append(input[i])
                break
            }
        }
    }
    if s.isEmpty {
        print("YES")
    } else {
        print("NO")
    }
}
