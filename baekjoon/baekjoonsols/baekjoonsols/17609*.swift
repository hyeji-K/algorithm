//
//  17609.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/30.
//

import Foundation

// MARK: 시간초과 
let input = readLine()!

for _ in 0..<Int(input)! {
    let str = Array(readLine()!).map { String($0) }
    var left: Int = 0
    var right: Int = str.count - 1
    var count: Int = 0
    var ans: Int = 0
    while left <= right {
        if str[left] == str[right] {
            right -= 1
            left += 1
            continue
        } else {
            if str[left + 1] == str[right] {
                count += 1
                left += 2
                right -= 1
            } else if str[left] == str[right - 1] {
                count += 1
                left += 1
                right -= 2
            } else if str[left + 1] == str[right - 1] {
                count += 2
            }
        }
        if count >= 2 {
            ans = 2
            break
        }
    }
    if count == 1 {
        ans = 1
    } else if count == 0 {
        ans = 0
    }
    
    print(ans)
}
