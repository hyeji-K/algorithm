//
//  1920.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/18.
//

import Foundation

let input = readLine()!
let number = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let input2 = readLine()!
let number2 = readLine()!.components(separatedBy: " ").map { Int(String($0))! }

let sortedArray = number.sorted()

for i in number2 {
    var ans: Int = 0
    var left: Int = 0
    var right: Int = number.count - 1
    while left <= right {
        let half = (left + right) / 2
        if sortedArray[half] == i {
            ans = 1
            break
        } else if sortedArray[half] > i {
            right = half - 1
        } else if sortedArray[half] < i {
            left = half + 1
        }
    }
    print(ans)
}
