//
//  26.인덱스바꾸기.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/26.
//

import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    let arr: [String] = my_string.map { String($0) }
    var result: String = ""
    
    for (i, j) in my_string.enumerated() {
        if i == num1 {
            result += arr[num2]
        } else if i == num2 {
            result += arr[num1]
        } else {
            result += String(j)
        }
    }
    return result
}

func solution2(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var arr = my_string.map{ String($0) }
    let temp = arr[num1]
    arr[num1] = arr[num2]
    arr[num2] = temp
    return arr.joined()
}

func solution3(_ myString: String, _ num1: Int, _ num2: Int) -> String {
    var array = ArraySlice(myString)
    array.swapAt(num1, num2)
    return array.map { String($0) }.joined()
}

// swapAt(_:_:)
// Exchanges the values at the specified indices of the collection.
var arr: [Int] = [3, 2, 5, 8, 4]
arr.swapAt(2, 4)
print(arr)
let sdf = "qwrsdfdsf"
let t = ArraySlice(sdf)
print(t)
