//
//  2805.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/23.
//

import Foundation

final class FileIO {
    private let buffer: [UInt8]
    private var index: Int = 0

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        
        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)]
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
                || now == 32 { now = read() }
        if now == 45 { isPositive.toggle(); now = read() }
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }

    @inline(__always) func readString() -> String {
        var now = read()

        while now == 10 || now == 32 { now = read() }

        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
    }

    @inline(__always) func readByteSequenceWithoutSpaceAndLineFeed() -> [UInt8] {
        var now = read()

        while now == 10 || now == 32 { now = read() }

        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return Array(buffer[beginIndex..<(index-1)])
    }
}

let fIO = FileIO()
let numberOfTree: Int = fIO.readInt()
let takeATree: Int = fIO.readInt()
var trees: [Int] = []
for _ in 0..<numberOfTree {
    let input = fIO.readInt()
    trees.append(input)
}

let sortedTress: [Int] = trees.sorted()
var left = 0
var right = 1000000000
var ans: Int = -1
while left <= right {
    var middle = (left + right) / 2
    var sum: Int = 0
    for i in 0..<sortedTress.count {
        let remain = sortedTress[i] - middle
        if remain > 0 {
            sum += remain
        }
    }
    if sum >= takeATree {
        left = middle + 1
        ans = middle
    } else {
        right = middle - 1
    }
}

print(ans)
