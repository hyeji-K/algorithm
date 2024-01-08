//
//  15552*.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/08.
//

import Foundation

/* 시간 초과
let input = readLine()!
for _ in 0..<Int(input)! {
    let ab = readLine()!.components(separatedBy: " ").map { Int(String($0))! }.reduce(0, +)
    print(ab)
}
 */


// MARK: 다음에 다시 살펴보기
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

var answer = ""
func solution() {
    let a = file.readInt(), b = file.readInt()
    answer += "\(a + b)\n"
}

let file = FileIO()

let n = file.readInt()
for _ in 0..<n {
    solution()
}

print(answer)

// 참고 - https://gist.github.com/JCSooHwanCho/30be4b669321e7a135b84a1e9b075f88

