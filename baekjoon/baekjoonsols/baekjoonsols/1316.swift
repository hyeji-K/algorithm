//
//  1316.swift
//  baekjoonsols
//
//  Created by heyji on 2024/02/24.
//

import Foundation

let input = Int(readLine()!)!
var count: Int = 0
for _ in 0..<input {
    let input = readLine()!
    
    var array: [Character] = []
    var cha: Character = input.first!
    var ans: Bool = true
    array.append(cha)
    for i in input {
        if cha == i {
            continue
        } else {
            cha = i
            if array.contains(i) {
                ans = false
                break
            } else {
                array.append(i)
            }
        }
    }
    if ans == true {
        count += 1
    }
}

print(count)
