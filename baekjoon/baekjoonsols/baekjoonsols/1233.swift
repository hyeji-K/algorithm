//
//  1233.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/14.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
var frequencyArray: [Int] = Array(repeating: 0, count: 81)
// 81 = 20 + 20 + 40 +1
for i in 1...input[0] {
    for j in 1...input[1] {
        for k in 1...input[2] {
            let sum = i + j + k
            frequencyArray[sum] += 1
        }
    }
}

let max = frequencyArray.max()!
let result = frequencyArray.firstIndex(of: max)!
print(result)
