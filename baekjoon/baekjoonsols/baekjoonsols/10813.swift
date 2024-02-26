//
//  10813.swift
//  baekjoonsols
//
//  Created by heyji on 2024/02/26.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var array: [Int] = []
for i in 0...input[0] {
    array.append(i)
}
for _ in 0..<input[1] {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let temp = array[input[0]]
    array[input[0]] = array[input[1]]
    array[input[1]] = temp
}
for i in 1..<array.count {
    print(array[i], terminator: " ")
}
