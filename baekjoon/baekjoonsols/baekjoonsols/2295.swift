//
//  2295.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/20.
//

import Foundation

// MARK: 세 수의 합
// 입력 - 첫째 줄에 자연수 N, 다음 N개의 줄에 차례로 U의 원소가 하나씩 주어진다
let input = readLine()!
var u: [Int] = []
for i in 0..<Int(input)! {
    let n = readLine()!
    u.append(Int(n)!)
}

// A + B + C = X 를 A + B = X - C 로 나타낼 숟 있음
// A + B 의 값이 X - C 의 값과 같은 것을 찾고, X의 값을 비교하여 max 값을 출력
// 두 수의 합을 나타내는 배열
var sumAWithB: Set<Int> = []
for i in 0..<u.count {
    for j in i..<u.count {
        let sum: Int = u[i] + u[j]
        sumAWithB.insert(sum)
    }
}
// 합에서 C를 뺐을때 그 수가 집합 U에 존재하면 됨
var maxValue: Int = 0
for i in 0..<u.count {
    for j in 0..<u.count {
        let number = u[i] - u[j]
        if sumAWithB.contains(number) {
            maxValue = max(maxValue, u[i])
        }
    }
}

print(maxValue)
