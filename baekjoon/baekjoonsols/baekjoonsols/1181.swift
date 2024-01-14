//
//  1181.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/14.
//

import Foundation

let count = readLine()!
var array: [String] = []
for _ in 1...Int(count)! {
    let input = readLine()!
    array.append(input)
}

var resultArray = Set(array)
let sortedResult = resultArray.sorted {
    if $0.count == $1.count {
        return $0 < $1
    }
    return $0.count < $1.count
}
sortedResult.map { print($0) }
