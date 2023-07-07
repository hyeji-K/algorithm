//
//  10.외계행성의나이.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/07.
//

import Foundation

func solution(_ age:Int) -> String {
    var result: String = ""
    let strArray = "\(age)".map { Int(String($0))! }
    for i in strArray {
        result += String(UnicodeScalar(i + 97)!)
    }

    return result
}


let char = "V"
let age: Int = 101

let num = UnicodeScalar(char)?.value // 86
let str = UnicodeScalar(age) // e

let name = "moongchi"
for i in name.utf16 {
    print(i, terminator: " ")
}
