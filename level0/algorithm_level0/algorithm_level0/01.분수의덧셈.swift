//
//  main.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/03.
//

import Foundation

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    var result: [Int] = []
        var denom: Int = 0
        var numer: Int = 0
        if denom1 == denom2 {
            denom = denom1
            numer = numer1 + numer2
            let gcd1 = gcd(denom, numer)
            if gcd1 != 0 {
                denom /= gcd1
                numer /= gcd1
            }
        } else {
            denom = denom1 * denom2
            numer = numer1 * denom2 + numer2 * denom1
            let gcd1 = gcd(denom, numer)
            if gcd1 != 0 {
                denom /= gcd1
                numer /= gcd1
            }
        }
        result.append(numer)
        result.append(denom)
        return result
}

func gcd(_ n:Int, _ m:Int) -> Int {
    var gcd: Int = Int()
    
    for i in 1...min(n, m) {
        if n % i == 0 && m % i == 0 {
            gcd = i
        }
    }
    
    return gcd
}

print(solution(1, 2, 3, 4))

