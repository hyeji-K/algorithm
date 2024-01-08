//
//  10431.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/08.
//

import Foundation

let testCaseCount = readLine()!
var testCaseArray: [[Int]] = []
for _ in 0..<Int(testCaseCount)! {
    var testCase = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
    testCaseArray.append(testCase)
}
for array in testCaseArray {
    var array = array
    let index = array.removeFirst()
    var stepCount: Int = 0
    for i in 0..<array.count {
        for j in 0..<i {
            if array[j] > array[i] {
                stepCount += 1
            }
        }
    }
    print("\(index) \(stepCount)")
}

// 삽입정렬
