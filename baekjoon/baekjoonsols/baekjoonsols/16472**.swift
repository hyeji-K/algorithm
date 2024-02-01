//
//  16472**.swift
//  baekjoonsols
//
//  Created by heyji on 2024/02/01.
//

import Foundation

let input = readLine()!
let str = readLine()!.map { String($0) }
var right: Int = 0
var ans: Int = 0
var currentAlphabetFrequency: [Int] = Array(repeating: 0, count: 26)
var currentUniqueAlphabetCount: Int = 0
var strLength: [String] = []
var nextIndex: Int = 0
var maxLength: Int = 0



for i in 0..<str.count {
    while nextIndex < str.count {
        
        if currentAlphabetFrequency[Int(UnicodeScalar(str[nextIndex])!.value) - 97] == 0 {
            currentAlphabetFrequency[Int(UnicodeScalar(str[nextIndex])!.value) - 97] += 1
            currentUniqueAlphabetCount += 1
        }
        nextIndex += 1
        if currentUniqueAlphabetCount > Int(input)! {
            if currentAlphabetFrequency[Int(UnicodeScalar(str[nextIndex])!.value) - 97] == 0 {
                currentAlphabetFrequency[Int(UnicodeScalar(str[nextIndex])!.value) - 97] += 1
                currentUniqueAlphabetCount -= 1
                break
            }
        }
        maxLength = max(maxLength, nextIndex - i)
        if Int(UnicodeScalar(str[i])!.value) - 97 == 0 {
            
            currentUniqueAlphabetCount -= 1
        }
    }
}

/*
2
abbcaccba
 */
