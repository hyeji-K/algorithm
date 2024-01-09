//
//  11005.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/09.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
var number = input[0]
let b = input[1]
var array: [Int] = []
while number >= b {
    let remain = number % b
    number = number / b
    array.append(remain)
}
array.append(number)

let to = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

var result = ""
for i in array.reversed() {
    result += to[i]
}

print(result)


/* 10진법 N을 B진법으로 변환하기 (1) 시간복잡도 O(logBN)
 1. N을 B진법으로 나타냈을때 가장 큰 자릿수의 지수 K를 찾는다.
 2. N에 들어갈 수 있는 B^K항의 자릿값 DK를 구한다.
 3. 다음 자릿수의 표현범위를 넘는 부분을 제외하고 2로 돌아가 다음 자릿수를 구한다.
 
 var result = ""

 var basePower = 1
 var k = 0
 while basePower * b <= number {
     basePower *= b
     k += 1
 }

 while basePower > 0 {
     let d = number / basePower
     number %= basePower
     basePower /= b
     if d < 10 {
         result += "\(d)"
     } else {
         result += String(UnicodeScalar(55 + d)!)
     }
 }
 print(result)
 
 10진법 N을 B진법으로 변환하기 (2)
 1. N을 B로 나눈 나머지를 구하고, B로 나눈다
 2. 이때 가장 마지막 나머지부터 가장 앞 자릿값이 된다
 
 while number > 0 {
     let remain = number % b
     if remain < 10 {
         result += "\(remain)"
     } else {
         result += String(UnicodeScalar(55 + remain)!)
     }
     number /= b
 }
 result = String(result.reversed())
 print(result)
 */
