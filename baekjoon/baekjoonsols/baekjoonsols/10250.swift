//
//  10250.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/11.
//

import Foundation

let testData = readLine()!
var result: [String] = []
for _ in 0..<Int(testData)! {
    let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
    var floor = input[2] % input[0]
    var room = (input[2] / input[0]) + 1
    if floor == 0 {
        floor = input[0]
        room = input[2] / input[0]
    }
    let ans = String(format: "%d%02d", floor, room)
    result.append(ans)
}
result.map { print($0) }
