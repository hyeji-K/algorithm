//
//  1302.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/15.
//

import Foundation

let books = readLine()!
var dictionary: [String: Int] = [:]
for _ in 0..<Int(books)! {
    let input = readLine()!
    if dictionary.contains(where: { $0.key == input }) {
        dictionary.updateValue(dictionary[input]! + 1, forKey: input)
    } else {
        dictionary.updateValue(1, forKey: input)
    }
}

let sortedDic = dictionary.sorted { $0.key < $1.key }
let max = sortedDic.max { a, b in a.value < b.value }!
print(max.key)
