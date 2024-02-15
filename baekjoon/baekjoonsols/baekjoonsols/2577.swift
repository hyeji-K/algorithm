//
//  2577.swift
//  baekjoonsols
//
//  Created by heyji on 2024/02/15.
//

import Foundation

let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
let abc = "\(a * b * c)".map { Int(String($0))! }
var array = Array(repeating: 0, count: 10)
for i in abc {
    array[i] += 1
}

array.map { print($0) }
