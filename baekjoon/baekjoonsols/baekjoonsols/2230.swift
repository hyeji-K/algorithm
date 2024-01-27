//
//  2230.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/27.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
var list: [Int] = []
for _ in 0..<input[0] {
    let input = readLine()!
    list.append(Int(input)!)
}

let sortedList: [Int] = list.sorted()
var right: Int = 0
var ans: Int = list.max()! - list.min()!

for i in 0..<sortedList.count {
    var difference: Int = abs(sortedList[i] - sortedList[right])
    while difference < input[1] && right < sortedList.count - 1 {
        right += 1
        difference = abs(sortedList[i] - sortedList[right])
    }
    if difference >= input[1] {
        if difference < ans {
            ans = difference
        }
    }
}

print(ans)
