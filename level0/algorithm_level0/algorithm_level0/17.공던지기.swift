//
//  17.공던지기.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/11.
//

import Foundation

// ❌
func solution(_ numbers:[Int], _ k:Int) -> Int {
    var result: Int = 0
    if numbers.count % 2 == 0 {
        if k > (numbers.count / 2) {
            result = numbers[k % (numbers.count / 2)]
        } else {
            result = numbers[k]
        }
    } else {
        var arr: [Int] = []
        if k % 2 == 0 {
            
        }
    }
    return result
}


// 다른 사람 풀이 참고
// 공은 1번부터 던지며 오른쪽으로 한 명을 건너뛰고 그다음 사람에게만 던질 수 있습니다.
// 공을 받는 사람 순서를 찾습니다. (k * 2)
// 공을 던지는 사람 순서로 변경합니다. ((k - 1) * 2)
// 순환되는 구조이므로 나머지를 통해 위치를 찾습니다. % numbers.count

func solution(_ numbers:[Int], _ k:Int) -> Int {
    return numbers[((k - 1) * 2) % numbers.count]
}

