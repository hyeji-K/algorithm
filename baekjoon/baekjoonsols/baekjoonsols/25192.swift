//
//  25192.swift
//  baekjoonsols
//
//  Created by heyji on 2024/02/01.
//

import Foundation

let input = readLine()!
var count: Int = 0
var helloPerson: Set<String> = []

for i in 0..<Int(input)! {
    let input = readLine()!
    if input == "ENTER" {
        helloPerson.removeAll()
        continue
    } else {
        if !helloPerson.contains(input) {
            helloPerson.insert(input)
            count += 1
        }
    }
}

print(count)
