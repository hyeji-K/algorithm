//
//  1543.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/02.
//

import Foundation

let input1 = readLine()!
let input2 = readLine()!

var contents = input1
var result: Int = 0
while contents.contains(input2) {
    if let range = contents.range(of: input2) {
        result += 1
        contents.replaceSubrange(range, with: "/")
    }
}

print(result)

// MEMO: removeSubrange(range)를 사용했을 시 반례 aababa / aba

/*
 1. 문서의 첫 글자부터 순회한다.
 2. 문서의 지금 글자부터 주어진 단어와 한글자씩 비교한다.
 3-1. 단어와 완전히 일치하면 개수를 올린다. 해당 단어가 등장한 이후부터 2를 반복한다.
 3-2. 단어와 매치되지 않았다면 다음 글자에서 2를 반복한다.
 */
