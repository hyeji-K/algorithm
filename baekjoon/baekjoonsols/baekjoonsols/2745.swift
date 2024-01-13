//
//  2745.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/13.
//

import Foundation

let input = readLine()!.components(separatedBy: " ")
let number = input[0]
let base = Int(input[1])!
let array: [String] = (65...90).map { String(UnicodeScalar($0)) }
var result: Int = 0

for (i, j) in number.enumerated() {
    if array.contains(String(j)) {
        let value: Int = Int(UnicodeScalar(String(j))!.value) - 55
        result += value * Int(pow(Double(base), Double(number.count - 1 - i)))
    } else {
        result += Int(String(j))! * Int(pow(Double(base), Double(number.count - 1 - i)))
    }
}

print(result)


// 다른 방법 풀이
result = Int(number, radix: base)!
