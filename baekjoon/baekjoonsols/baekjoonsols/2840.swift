//
//  2840.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/14.
//

import Foundation

// 주의: 바퀴에 같은 글자는 두 번 이상 등장하지 않는다.

let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let countOfWheel = input[0]
let count = input[1]
var wheel: [String] = Array(repeating: "", count: countOfWheel)
var result: String = ""
var rastString: String = ""
var index: Int = 0

for _ in 0..<count {
    let input = readLine()!.components(separatedBy: " ")
    index += Int(input[0])!
    index %= countOfWheel
    if wheel.contains(input[1]) {
        if wheel[index] != input[1] {
            result = "!"
            break
        }
    } else {
        if wheel[index] != "" {
            result = "!"
            break
        }
    }
    wheel[index] = input[1]
    rastString = input[1]
}

for i in 0..<wheel.count {
    if wheel[i] == "" {
        wheel[i] = "?"
    }
}

if result != "!" {
    var index = wheel.firstIndex(of: rastString)!
    while index >= 0 {
        result += wheel[index]
        wheel.remove(at: index)
        index -= 1
    }
    while wheel.count > 0 {
        result += wheel.removeLast()
    }
}

print(result)
