//
//  06.직각삼각형출력하기.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/05.
//

import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
for i in 1...n[0] {
    for _ in 1...i {
        print("*", terminator: "")
    }
    print()
}


// 다른 방식으로 풀이
for i in 1...n[0] {
    print(String(repeating: "*", count: i))
}
