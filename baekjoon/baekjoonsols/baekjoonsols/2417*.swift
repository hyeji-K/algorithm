//
//  2417*.swift
//  baekjoonsols
//
//  Created by heyji on 2024/01/21.
//

import Foundation

// MARK: 이분탐색 - 정수 제곱근

let n = UInt64(readLine()!)!

if n == 0 {
    print(0)
} else {
    var l: UInt64 = 0
    var r: UInt64 = UInt64(sqrt(Double(UInt64.max))) + 1
    var ans: UInt64 = 0
    
    while l <= r {
        let mid = (l + r) / 2
        
        if n <= mid * mid {
            ans = mid
            r = mid - 1
        } else {
            l = mid + 1
        }
    }
    
    print(ans)
}
