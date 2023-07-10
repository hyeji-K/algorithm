//
//  14.모스부호(1).swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/10.
//

import Foundation

func solution(_ letter:String) -> String {
    var morse: [String: String] = [
    ".-":"a","-...":"b","-.-.":"c","-..":"d",".":"e","..-.":"f",
    "--.":"g","....":"h","..":"i",".---":"j","-.-":"k",".-..":"l",
    "--":"m","-.":"n","---":"o",".--.":"p","--.-":"q",".-.":"r",
    "...":"s","-":"t","..-":"u","...-":"v",".--":"w","-..-":"x",
    "-.--":"y","--..":"z"
    ]
    return letter.components(separatedBy: " ").map { morse[$0]! }.joined()
}
