//
//  7795.swift
//  baekjoonsols
//
//  Created by heyji on 2024/02/05.
//

import Foundation

let n = readLine()!
for _ in 0..<Int(n)! {
    let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
    let aArray: [Int] = readLine()!.components(separatedBy: " ").map { Int(String($0))! }.sorted()
    let bArray: [Int] = readLine()!.components(separatedBy: " ").map { Int(String($0))! }.sorted()
    
    var count: Int = 0
    var pointer: Int = 0
    
    for i in 0..<input[0] {
        while pointer < input[1] && aArray[i] > bArray[pointer]  {
            pointer += 1
        }
        count += pointer
    }
    
    print(count)
}
