//
//  10811.swift
//  baekjoonsols
//
//  Created by heyji on 2024/02/29.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var array: [Int] = []
array.append(0)
for i in 1...input[0] {
    array.append(i)
}

for _ in 0..<input[1] {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a: [Int] = array[input[0]...input[1]].reversed()
    array.replaceSubrange(input[0]...input[1], with: a)
}

for i in array {
    if i == 0 {
        continue
    }
    print(i, terminator: " ")
}
