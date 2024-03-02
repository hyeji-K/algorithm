//
//  25206.swift
//  baekjoonsols
//
//  Created by heyji on 2024/03/02.
//

import Foundation

let score: [String: Double] = ["A+": 4.5, "A0": 4.0, "B+": 3.5, "B0": 3.0, "C+": 2.5, "C0": 2.0, "D+": 1.5, "D0": 1.0, "F": 0.0]

var sum: Double = 0.0
var sumOfScore: Double = 0.0

for _ in 0..<20 {
    let input = readLine()!.split(separator: " ").map { String($0) }
    if input[2] == "P" {
        continue
    }
    sum += Double(input[1])!
    sumOfScore += score[input[2]]! * Double(input[1])!
}

print(sumOfScore/sum)
