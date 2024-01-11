//
//  1739.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/11.
//

import Foundation

let input = readLine()!
let location: [String] = readLine()!.map { String($0) }
var array: [[String]] = Array(repeating: Array(repeating: ".", count: Int(input)!), count: Int(input)!)

var passVertical: [[Bool]] = Array(repeating: Array(repeating: false, count: Int(input)!), count: Int(input)!)
var passHorizontal: [[Bool]] = Array(repeating: Array(repeating: false, count: Int(input)!), count: Int(input)!)
var curRow = 0
var curColumn = 0
// D -> (+1, 0) , U -> (-1, 0) , L -> (0, -1), R -> (0, +1)

for i in location {
    switch i {
    case "D":
        if curRow == Int(input)! - 1 {
            continue
        }
        passVertical[curRow][curColumn] = true
        passVertical[curRow + 1][curColumn] = true
        curRow += 1
    case "U":
        if curRow == 0 {
            continue
        }
        passVertical[curRow][curColumn] = true
        passVertical[curRow - 1][curColumn] = true
        curRow -= 1
    case "L":
        if curColumn == 0 {
            continue
        }
        passHorizontal[curRow][curColumn] = true
        passHorizontal[curRow][curColumn - 1] = true
        curColumn -= 1
    case "R":
        if curColumn == Int(input)! - 1 {
            continue
        }
        passHorizontal[curRow][curColumn] = true
        passHorizontal[curRow][curColumn + 1] = true
        curColumn += 1
    default:
        break
    }
}

for i in 0..<Int(input)! {
    for j in 0..<Int(input)! {
        if passVertical[i][j] == true && passHorizontal[i][j] == true {
            array[i][j] = "+"
        } else if passVertical[i][j] == true && passHorizontal[i][j] == false {
            array[i][j] = "|"
        } else if passVertical[i][j] == false && passHorizontal[i][j] == true {
            array[i][j] = "-"
        }
    }
}

for i in 0..<Int(input)! {
    for j in 0..<Int(input)! {
        print(array[i][j], terminator: "")
    }
    print()
}
