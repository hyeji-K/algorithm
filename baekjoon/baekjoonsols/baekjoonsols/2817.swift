//
//  2817.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/12.
//

import Foundation

let countOfParticient = readLine()!
let numberOfStep = readLine()!
var stepName: [String] = []
var stepInfo: [Int] = []
var result: [Int: String] = [:]
var ans: [String: Int] = [:]

for _ in 0..<Int(numberOfStep)! {
    let input = readLine()!.components(separatedBy: " ")
//    print(input)
    // TODO: 득표율이 전체의 5%이상
//    print(input[1])
//    print(countOfParticient)
//    print((Int(input[1])!/Int(countOfParticient)!))
    if (Double(input[1])!/Double(countOfParticient)!) * 100 >= 5 {
//        print("등록")
        stepName.append(input[0])
        stepInfo.append(Int(input[1])!)
    }
}
//print(stepInfo)
//print(stepName)

for i in 1...14 {
    for j in 0..<stepName.count {
        let value = stepInfo[j] / i
        result.updateValue(stepName[j], forKey: value)
//        result[stepName[j]] = value
    }
}
//print(result)

let sortedDictionary = result.sorted { $0.0 > $1.0 }
for i in 0..<14 {
    if ans.contains { key, value in
        return key == sortedDictionary[i].value
//        if key == sortedDictionary[i].key {
//            ans[key] = value + 1
//            return ans
//        } else {
//            return ans.updateValue(1, forKey: key)
//        }
    } {
        ans[sortedDictionary[i].value] = ans[sortedDictionary[i].value]! + 1
    } else {
        ans.updateValue(1, forKey: sortedDictionary[i].value)
    }
}

let printOfResult = ans.sorted { $0.0 < $1.0 }

for (key, value) in printOfResult {
    print("\(key) \(value)")
}
