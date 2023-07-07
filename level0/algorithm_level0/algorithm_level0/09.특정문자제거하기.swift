//
//  09.특정문자제거하기.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/07.
//

import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    var result: String = ""
    for i in my_string {
        if i == Character(letter) {
            continue
        }
        result += String(i)
    }
    return result
}



let str: String = "AndSAfs"
let letter: String = "A"
let f = str.components(separatedBy: letter).joined()
//print(f)

let t = str.map { String($0) }.filter { $0 != letter }.joined()
//print(t)

let d = str.filter { String($0) != letter }
//print(d)

let r = str.replacingOccurrences(of: letter, with: "")
//print(r)
