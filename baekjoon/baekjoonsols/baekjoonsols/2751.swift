//
//  2751.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/13.
//

import Foundation

let input = readLine()!
var array: [Int] = []
for i in 0..<Int(input)! {
    let number = readLine()!
    array.append(Int(number)!)
}

let sortedArray = array.sorted()
sortedArray.map { print($0) }
