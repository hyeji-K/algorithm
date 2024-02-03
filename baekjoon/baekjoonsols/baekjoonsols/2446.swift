//
//  2446.swift
//  baekjoonsols
//
//  Created by heyji on 2024/02/03.
//

import Foundation

let input = Int(readLine()!)!
let line = 2 * input - 1

for i in 0..<input {
    var printStar = ""
    for _ in 0..<i {
        printStar += " "
    }
    for _ in 0..<(2*input - (2*i + 1)) {
        printStar += "*"
    }
    print(printStar)
}

for i in 1..<input {
    var printStar = ""
    for _ in 1..<(input - i) {
        printStar += " "
    }
    for _ in 0..<(2*i + 1) {
        printStar += "*"
    }
    print(printStar)
}
