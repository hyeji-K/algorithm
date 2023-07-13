//
//  19.모음제거.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/13.
//

import Foundation

let my_string = "nice to meet you"
let vowels: [String] = ["a", "e", "i", "o", "u"]
var result: String = ""
for i in vowels {
    for i in my_string {
    }
    result = my_string.filter { String($0) != i }
}
print(result)
