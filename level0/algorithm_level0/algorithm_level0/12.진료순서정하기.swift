//
//  12.진료순서정하기.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/07.
//

import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    var result: [Int] = []
    let resorted: [Int] = emergency.sorted().reversed()
    for i in emergency {
        for (num, j) in resorted.enumerated() {
            if i == j {
                result.append(num + 1)
            }
        }
    }
    return result
}

//let e = [30, 10, 23, 6, 100]
//e.map { e.sorted(by: >).firstIndex(of: $0)! + 1 }

