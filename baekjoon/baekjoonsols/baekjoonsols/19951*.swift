//
//  19951*.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/19.
//

import Foundation

// MARK: 구간합 - 태상이의 훈련소 생활
// 시간초과로 인해 빠른입출력 사용
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
let n = fIO.readInt()
let m = fIO.readInt()
var array: [Int] = []

for _ in 0..<n {
    let input = fIO.readInt()
    array.append(input)
}

// 각 조교의 지시사항의 누적합을 구하기 위해 배열 선언
var deltaArray: [Int] = Array(repeating: 0, count: n + 1)

for i in 0..<m {
    let start = fIO.readInt() - 1
    let end = fIO.readInt() - 1
    let delta = fIO.readInt()
    deltaArray[start] += delta
    deltaArray[end + 1] += -delta
}
// 누적합 구하기
for i in 1..<deltaArray.count {
    deltaArray[i] = deltaArray[i - 1] + deltaArray[i]
}

// 초기 연병장에 각 조교의 지시사항의 누적합을 구한 것을 더해주기
var ans = ""

for i in 0..<array.count {
    array[i] += deltaArray[i]
    ans += "\(array[i]) "
}

// 출력
print(ans)
