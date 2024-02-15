//
//  10809.swift
//  baekjoonsols
//
//  Created by heyji on 2024/02/15.
//

import Foundation

let input = readLine()!.map { String($0) }
var array: [Int] = Array(repeating: -1, count: 26)
for i in 0..<input.count {
    let index = Int(UnicodeScalar(input[i])!.value) - 97
    if array[index] == -1 {
        array[index] = i
    }
}

array.map { print($0, terminator: " ") }
