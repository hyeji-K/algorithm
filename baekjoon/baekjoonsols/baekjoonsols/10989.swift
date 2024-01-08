//
//  10989.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/08.
//

import Foundation

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

var result = ""

let fIO = FileIO()
let n = fIO.readInt()

// MEMO: sorted() 내장함수 사용 시 시간 3608ms
//var array: [Int] = []
//for _ in 0..<n {
//    let value = fIO.readInt()
//    array.append(value)
//}
//
//let sortedArray = array.sorted()
//for i in sortedArray {
//    result += "\(i)\n"
//}
//
//print(result)

// MEMO: 카운트 정렬 이용 시 시간 1400ms
// [ 1 <= 자연수 <= 10,000 ] 같은 조건으로 10,001개의 인덱스를 가진 배열을 이용할 수 있음
var countArray = Array(repeating: 0, count: 10001)
for i in 0..<n {
    let value = fIO.readInt()
    countArray[value] += 1
}
for (i, j) in countArray.enumerated() {
    result += String(repeating: "\(i)\n",count: j)
}

print(result)
