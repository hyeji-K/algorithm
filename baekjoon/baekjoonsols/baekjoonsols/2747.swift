//
//  2747.swift
//  baekjoonsols
//
//  Created by heyji on 2024/02/14.
//

import Foundation

// MARK: 피보나치 수 
var array: [Int] = Array(repeating: 0, count: 50)

func recursiveFunction(number: Int) -> Int {
    // base case
    if number == 1 || number == 2 {
        return 1
    }
    if array[number] != 0 {
        return array[number]
    }
    // recursive case
    array[number] = recursiveFunction(number: number - 1) + recursiveFunction(number: number - 2)
    return array[number]
}

let input = readLine()!

print(recursiveFunction(number: Int(input)!))
