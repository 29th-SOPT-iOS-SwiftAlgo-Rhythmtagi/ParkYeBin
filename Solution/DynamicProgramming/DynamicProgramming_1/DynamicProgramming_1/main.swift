//
//  main.swift
//  DynamicProgramming_1
//
//  Created by 박예빈 on 2021/10/20.
//

import Foundation

var input : Int = Int(readLine()!)!

var dp = [Int](repeating: 0, count: 30000)

for i in 2...input {
    dp[i] = dp[i - 1] + 1
    
    if i % 2 == 0 {
        dp[i] = min(dp[i], dp[i / 2] + 1)
    }
    
    if i % 3 == 0 {
        dp[i] = min(dp[i], dp[i / 3] + 1)
    }
    
    if i % 5 == 0 {
        dp[i] = min(dp[i], dp[i / 5] + 1)
    }
}

print(dp[input])


