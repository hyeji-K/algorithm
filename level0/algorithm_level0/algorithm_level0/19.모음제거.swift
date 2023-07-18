//
//  19.모음제거.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/13.
//

import Foundation

func solution(_ my_string:String) -> String {
    let vowels: [String] = ["a", "e", "i", "o", "u"]
    var result: String = ""
    for (_, i) in my_string.enumerated() {
        if vowels.filter({ $0.contains(i) }).count > 0 {
            continue
        }
        result += String(i)
    }
    return result
}


// my_string.filter { !["a", "e", "i", "o", "u"].contains($0)}
// my_string.components(separatedBy: ["a", "e", "i", "o", "u"]).joined()
