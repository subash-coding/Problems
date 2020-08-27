//
//  main.swift
//  Problems
//
//  Created by subash on 8/26/20.
//  Copyright © 2020 symbolicTrace. All rights reserved.
//

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i]+nums[j] == target {
                    return [i,j]
                }
            }
        }
        
        return [-1,-1]
    }
}

print(Solution().twoSum([3,2,4], 6))
