//
//  2884.swift
//  baekjoonsols
//
//  Created by heyji on 2024/02/16.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
var hour = input[0]
var minute = input[1]

if minute < 45 {
    if hour == 0 {
        hour += 24
    }
    hour -= 1
    minute += 60 - 45
} else {
    minute -= 45
}

print("\(hour) \(minute)")
