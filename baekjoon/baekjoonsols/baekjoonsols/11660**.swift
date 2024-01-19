//
//  11660*.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/19.
//

import Foundation

// MARK: 구간합 - 구간 합 구하기 5
// 런타임에러 -> 시간초과로 빠른 입출력 사용
final class FileIO {
    private let buffer: [UInt8]
    private var index: Int = 0

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        
        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }

        return buffer[index]
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }

    @inline(__always) func readString() -> String {
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시

        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
    }

    @inline(__always) func readByteSequenceWithoutSpaceAndLineFeed() -> [UInt8] {
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시

        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return Array(buffer[beginIndex..<(index-1)])
    }
}

// 입력 - 첫 줄에 연병장의 크기 N과 조교의 수 M
//     - 둘째 줄에 연병장 각 칸의 높이 Hi가 순서대로 N
//     - 셋째 줄부터 M개의 줄에 각 조교의 지시
let fIO = FileIO()
let tableSize = fIO.readInt()
let number = fIO.readInt()
var array: [Int] = []

var table: [[Int]] = Array(repeating: Array(repeating: 0, count: tableSize), count: tableSize)
for i in 0..<tableSize {
    for j in 0..<tableSize {
        let input = fIO.readInt()
        table[i][j] = input
    }
}

// 행들의 합 구하기
for i in 0..<tableSize {
    for j in 1..<tableSize {
        table[i][j] = table[i][j - 1] + table[i][j]
    }
}

// 열들의 합 구하기
for i in 1..<tableSize {
    for j in 0..<tableSize {
        table[i][j] = table[i - 1][j] + table[i][j]
    }
}

// 출력
var ans: String = ""
for _ in 0..<number {
    let r1 = fIO.readInt() - 1
    let c1 = fIO.readInt() - 1
    let r2 = fIO.readInt() - 1
    let c2 = fIO.readInt() - 1
    var sum: Int = 0
    
    if r1 == 0 && c1 == 0 {
        sum = table[r2][c2]
    } else if c1 == 0 {
        sum = table[r2][c2] - table[r1 - 1][c2]
    } else if r1 == 0 {
        sum = table[r2][c2] - table[r2][c1 - 1]
    } else {
        sum = table[r2][c2] - table[r1 - 1][c2] - table[r2][c1 - 1] + table[r1 - 1][c1 - 1]
    }
    ans += "\(sum)\n"
}

print(ans)
