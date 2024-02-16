//
//  2920.swift
//  baekjoonsols
//
//  Created by heyji on 2024/02/16.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let array: [Int] = [1, 2, 3, 4, 5, 6, 7, 8]

if input == array {
    print("ascending")
} else if input == array.reversed() {
    print("descending")
} else {
    print("mixed")
}
