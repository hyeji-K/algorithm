//
//  2470**.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/23.
//

import Foundation

// MARK: 두 용액 - 어려움 나중에 다시 풀기
let input = readLine()!
let array = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let sortedArray = array.sorted()
var ans1 = 0
var ans2 = 0
var ansAbs = 2000000001

for i in 0..<sortedArray.count {
    var left = i
    var right = sortedArray.count - 1
    while left < right {
        let middle = (left + right) / 2
        let sum = sortedArray[i] + sortedArray[middle]
        if abs(sum) < ansAbs {
            ansAbs = abs(sum)
            ans2 = sortedArray[middle]
            ans1 = sortedArray[i]
        }
        if sum >= 0 {
            right = middle - 1
        } else {
            left = middle + 1
        }
    }
}

print("\(ans1) \(ans2)")
