//
//  10448.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/10.
//

import Foundation

func getTriangleNumbers(_ number: Int) -> [Int] {
    var result: [Int] = []
    for i in 1..<number {
        let value = i * (i + 1) / 2
        if value > number {
            break
        }
        result.append(value)
    }
    return result
}

func isEurekaNumber(_ array: [Int], _ number: Int) -> Bool {
    for i in 0..<array.count {
        for j in 0..<array.count {
            for k in 0..<array.count {
                if number == array[i] + array[j] + array[k] {
                    return true
                }
            }
        }
    }
    return false
}

let input = readLine()!
var array: [Int] = []
for _ in 0..<Int(input)! {
    let k = readLine()!
    array.append(Int(k)!)
}

var result: [Int] = []

for number in array {
    let getArray = getTriangleNumbers(number)
    let ans = isEurekaNumber(getArray, number)
    result.append(ans ? 1 : 0)
}

for i in result {
    print(i)
}
