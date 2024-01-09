//
//  3273.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/09.
//

import Foundation

let input = readLine()!
let array = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let sum = readLine()!

var boolArray = Array(repeating: false, count: 1000001)
var count: Int = 0

for i in array {
    boolArray[i] = true
}

for i in 0..<Int(input)! {
    let remain = Int(sum)! - array[i]
    if remain >= 1 && remain <= 1000001 {
        count += boolArray[remain] ? 1 : 0
    }
}

print(count/2)

/* 반례
 5
 1 2 3 4 5
 1
 // remain을 구하는 과정에서 음수가 나옴 -> 수정
 --
 1
 1
 2000000
 // remain의 범위 지정
 --
 */
