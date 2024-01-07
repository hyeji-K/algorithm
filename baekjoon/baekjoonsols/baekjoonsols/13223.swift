//
//  13223.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/07.
//

import Foundation

let current = readLine()!.components(separatedBy: ":").map { Int(String($0))! }
let target = readLine()!.components(separatedBy: ":").map { Int(String($0))! }

let currentHour = current[0]
let currentMinute = current[1]
let currentSecond = current[2]

let targetHout = target[0]
let targetMinute = target[1]
let targetSecond = target[2]

var currentSecondAmount = currentHour * 3600 + currentMinute * 60 + currentSecond
var targetSecondAmount = targetHout * 3600 + targetMinute * 60 + targetSecond

var needSecondAmount = targetSecondAmount - currentSecondAmount
if needSecondAmount <= 0 { // 이 시간은 1초보다 크거나 같고, 24시간보다 작거나 같다.
    needSecondAmount += 24 * 3600
}

let needHour = needSecondAmount / 3600
let needMinute = (needSecondAmount % 3600) / 60
let needSecond = needSecondAmount % 60

print(String(format: "%02d:%02d:%02d", needHour, needMinute, needSecond))


/*
 1. ':' 문자를 기준으로 시간, 분, 초를 쪼갠다
 2. 두 시간, 분, 초의 차이를 계산한다
 - 계층적으로 표현되는 각 단위를 계산할 때, 가장 작은 단위로 통일하면 더 편할 수 있다
 3. 구해진 시간을 HH:MM:SS 형태로 출력한다.
 */
