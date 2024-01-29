//
//  11728.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/29.
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
let n = fIO.readInt()
let m = fIO.readInt()
var aArray: [Int] = []
var bArray: [Int] = []

for _ in 0..<n {
    let input = fIO.readInt()
    aArray.append(input)
}

for _ in 0..<m {
    let input = fIO.readInt()
    bArray.append(input)
}

var aIndex: Int = 0
var bIndex: Int = 0
var result: String = ""

while aIndex < n && bIndex < m {
    if aArray[aIndex] < bArray[bIndex] {
        result += "\(aArray[aIndex]) "
        aIndex += 1
    } else {
        result += "\(bArray[bIndex]) "
        bIndex += 1
    }
}

while aIndex < n {
    result += "\(aArray[aIndex]) "
    aIndex += 1
}
while bIndex < m {
    result += "\(bArray[bIndex]) "
    bIndex += 1
}

print(result)
