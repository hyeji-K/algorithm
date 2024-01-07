//
//  10158.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/07.
//

import Foundation

let dimension = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let initLocation = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let time = readLine()!

let w = dimension[0]
let h = dimension[1]

var p = initLocation[0]
var q = initLocation[1]

var limitTime = Int(time)!

var deltaX = 1
var deltaY = 1

/* 시간초과
while limitTime > 0 {
    limitTime -= 1
    if p == w {
        deltaX = -1
    } else if p == 0 {
        deltaX = 1
    }
    if q == h {
        deltaY = -1
    } else if q == 0 {
        deltaY = 1
    }
    p += deltaX
    q += deltaY
}
*/


var timeX = limitTime % (2 * w)
while timeX > 0 {
    timeX -= 1
    if p == w {
        deltaX = -1
    } else if p == 0 {
        deltaX = 1
    }
    p += deltaX
}
var timeY = limitTime % (2 * h)
while timeY > 0 {
    timeY -= 1
    if q == h {
        deltaY = -1
    } else if q == 0 {
        deltaY = 1
    }
    q += deltaY
}

print("\(p) \(q)")


/* 시간복잡도 O(1)
 var resultP = (p + limitTime) % (2 * w)
 var resultQ = (q + limitTime) % (2 * h)
 if resultP > w {
     resultP = 2 * w - resultP
 }
 if resultQ > h {
     resultQ = 2 * h - resultQ
 }

 print("\(resultP) \(resultQ)")
 */
