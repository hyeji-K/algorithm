//
//  2309.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/09.
//

import Foundation

let input = 9
var array: [Int] = []
for _ in 0..<input {
    let input = readLine()!
    array.append(Int(input)!)
}
let sum = array.reduce(0, +)
var resultBool = false

for i in 0..<array.count {
    for j in 0..<i {
        let result = sum - array[i] - array[j]
        if result == 100 {
            resultBool = true
            array.remove(at: i)
            array.remove(at: j)
            break
        }
    }
    if resultBool {
        break
    }
}

for i in array.sorted() {
    print(i)
}
