//
//  main.swift
//  Problems
//
//  Created by subash on 8/26/20.
//  Copyright © 2020 symbolicTrace. All rights reserved.
//

import Foundation

//Two Sum
class Solution1 {
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

class Solution2{

    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var store = Dictionary<Int,Int>()
        for (index,value) in nums.enumerated() {
            store[index] = value
        }
        var pairIndex = -1
        for index in 0..<nums.count {
            let complement = target - nums[index]
           let found = store.contains { (key,value) -> Bool in
                if key != index && value == complement {
                    pairIndex = key
                    return true
                } else  {
                    return false
                }
            }
            if found {
                return [index,pairIndex]
            }
            
        }
        return [-1,-1]
      }
}

print(Solution1().twoSum([3,2,4], 6))
print(Solution2().twoSum([3,2,4], 6))

