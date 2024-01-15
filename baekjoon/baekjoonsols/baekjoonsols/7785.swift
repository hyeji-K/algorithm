//
//  7785.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/15.
//

import Foundation

// 입력 - 로그에 기록된 출입 기록의 수(2 ≤ n ≤ 106), 각 사람의 이름이 주어지고 "enter"나 "leave"가 주어진다.
let n = readLine()!
var array: [String: Bool] = [:]
for i in 0..<Int(n)! {
    let input = readLine()!.components(separatedBy: " ")
    if input[1] == "enter" {
        array.updateValue(true, forKey: input[0])
    } else {
        array.updateValue(false, forKey: input[0])
    }
}

// 출력 - 현재 회사에 있는 사람의 이름을 사전 순의 역순으로 한 줄에 한 명씩 출력
let sortedArr = array.sorted { $0.key > $1.key }
for (key, value) in sortedArr {
    if value == true {
        print(key)
    }
}
