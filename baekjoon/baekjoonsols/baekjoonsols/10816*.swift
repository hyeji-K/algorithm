//
//  10816.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/22.
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
var array: [Int] = []
for _ in 0..<n {
    let input = fIO.readInt()
    array.append(input)
}
let m = fIO.readInt()
var checkCard: [Int] = []
for _ in 0..<m {
    let input = fIO.readInt()
    checkCard.append(input)
}

let sortedInput = array.sorted()

func findLowerBoundIndex(card: Int) -> Int {
    var lowerBoundIndex: Int = sortedInput.count
    var left = 0
    var right = sortedInput.count - 1
    while left <= right {
        var middle = (left + right) / 2
        if sortedInput[middle] < card {
            left = middle + 1
        } else {
            right = middle - 1
            lowerBoundIndex = middle
        }
    }
    return lowerBoundIndex
}

func findUpperBoundIndex(card: Int) -> Int {
    var upperBoundIndex = sortedInput.count
    var left = 0
    var right = sortedInput.count - 1
    while left <= right {
        var middle = (left + right) / 2
        if sortedInput[middle] <= card {
            left = middle + 1
        } else {
            right = middle - 1
            upperBoundIndex = middle
        }
    }
    return upperBoundIndex
}

for i in checkCard {
    let lowerBoundIndex = findLowerBoundIndex(card: i)
    let upperBoundIndex = findUpperBoundIndex(card: i)
    print(upperBoundIndex - lowerBoundIndex)
}
