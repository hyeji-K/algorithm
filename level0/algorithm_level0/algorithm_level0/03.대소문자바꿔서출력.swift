//
//  main.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/04.
//

import Foundation

// MARK: 대소문자 바꿔서 출력하기
// 유니코드를 이용 - A = 65, Z =90, a = 97, z = 122
let s1 = readLine()!
var result: String = ""
for i in s1.unicodeScalars {
    if i.value <= 90 {
        result += String(i).lowercased()
    } else {
        result += String(i).uppercased()
    }
}
print(result)

// isUppercase 이용 - Character
let s2 = readLine()!
print(s2.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }.joined())
