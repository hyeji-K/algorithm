//
//  24.암호해독.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/22.
//

import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    var result: String = ""
    for (i, n) in cipher.enumerated() {
        if (i + 1) % code == 0 {
            result += String(n)
        }
    }
    return result
}
