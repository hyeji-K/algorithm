//
//  10814.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/15.
//

import Foundation

class Member {
    var age: Int
    var name: String
    
    init(age: Int, name: String) {
        self.age = age
        self.name = name
    }
}

// 입력 - 회원의 수 N(1 ≤ N ≤ 100,000), 각 회원의 나이와 이름
let count = readLine()!
var members: [Member] = []
for _ in 0..<Int(count)! {
    let input = readLine()!.components(separatedBy: " ")
    let person: Member = Member(age: Int(input[0])!, name: input[1])
    members.append(person)
}

// 회원들을 나이가 증가하는 순으로, 나이가 같으면 먼저 가입한 사람이 앞에 오는 순서로 정렬
members.sort { $0.age < $1.age }

// 출력
members.map { print("\($0.age) \($0.name)") }
