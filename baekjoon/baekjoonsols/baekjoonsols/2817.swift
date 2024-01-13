//
//  2817.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/12.
//

import Foundation

let participants = readLine()!
let numberOfstaff = readLine()!
var staffName: [String] = []
var staffInfo: [Int] = []
var result: [Int: String] = [:]
var ans: [String: Int] = [:]

for _ in 0..<Int(numberOfstaff)! {
    let input = readLine()!.components(separatedBy: " ")
    // MEMO: 득표율이 전체의 5%이상인 참가자만
    if (Double(input[1])!/Double(participants)!) * 100 >= 5 {
        staffName.append(input[0])
        staffInfo.append(Int(input[1])!)
    }
}
// 각 스태프들의 득표수를 1부터 14까지의 숫자로 나눠서 딕셔너리에 삽입
for i in 1...14 {
    for j in 0..<staffName.count {
        let value = staffInfo[j] / i
        result.updateValue(staffName[j], forKey: value)
    }
}
// 딕셔너리를 스태프의 점수가 큰 값부터 내림차순으로 정렬
let sortedDictionary = result.sorted { $0.0 > $1.0 }
// 14개의 칩을 0부터 13까지 정렬된 스태프에게 나눠줌
for i in 0..<14 {
    if ans.contains { key, value in
        return key == sortedDictionary[i].value
    } {
        ans[sortedDictionary[i].value] = ans[sortedDictionary[i].value]! + 1
    } else {
        ans.updateValue(1, forKey: sortedDictionary[i].value)
    }
}

// 틀린 이유: 받은 득표수가 5% 이상인 스태프들 중에서도 칩을 받지 못해 0개인 스태프도 출력해야함 -> 코드 추가
for i in 0..<staffName.count {
    if ans.contains(where: { key, value in
        return key == staffName[i]
    }) {
        continue
    } else {
        ans.updateValue(0, forKey: staffName[i])
    }
}

// 스태프의 이름 순으로 정렬
let printOfResult = ans.sorted { $0.0 < $1.0 }
for (key, value) in printOfResult {
    print("\(key) \(value)")
}
