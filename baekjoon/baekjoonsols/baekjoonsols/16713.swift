//
//  16713.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/17.
//

import Foundation

// MARK: 구간합 - Generic Queries
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


// 입력 - 첫째 줄에는 N, Q, 둘째 줄에는 길이가 N인 수열, 그 후 Q개의 줄에 걸쳐서 쿼리가 주어진다.
let fIO = FileIO()
let n = fIO.readInt()
let q = fIO.readInt()
var array: [Int] = []

for _ in 0..<n {
    let input = fIO.readInt()
    array.append(input)
}

// xor 연산 [^] - 같으면 0, 다르면 1
var xorResult: [Int] = []
xorResult.append(array[0])
for i in 0..<array.count {
    let xor = xorResult[i] ^ array[i]
    xorResult.append(xor)
}

// 모든 쿼리의 답을 XOR한 값
var result: Int = 0
for _ in 0..<q {
    let first: Int = fIO.readInt()
    let second: Int = fIO.readInt()
    result ^= xorResult[second] ^ xorResult[first - 1]
}

// 출력
print(result)
