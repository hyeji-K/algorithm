//
//  11866.swift
//  baekjoonsols
//
//  Created by heyji on 2024/03/10.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var array = Array(1...input[0])
var ans: String = ""
var index: Int = input[1] - 1
while ans.count < input[0] {
    index = index % array.count
    ans += "\(array[index])"
    array.remove(at: index)
    index += input[1] - 1
}

print("<" + ans.map { String($0) }.joined(separator: ", ") + ">" )


/// 큐를 이용한 방법
let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let N = input[0]
let K = input[1]
var queue: [Int?] = Array(1...N)
var result = [Int]()
var pointer = K-1

while result.count < N {
    for i in (pointer - (K-1))..<pointer {
        queue.append(queue[i])
        queue[i] = nil
    }
    result.append(queue[pointer]!)
    queue[pointer] = nil
    pointer += K
}

print("<\(result.map{String($0)}.joined(separator: ", "))>")
