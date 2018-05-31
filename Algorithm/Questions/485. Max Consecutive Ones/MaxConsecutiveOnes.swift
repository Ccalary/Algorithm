//
//  MaxConsecutiveOnes.swift
//  Algorithm
//
//  Created by caohouhong on 2018/5/28.
//  Copyright © 2018年 caohouhong. All rights reserved.
//  题目地址：https://leetcode.com/problems/max-consecutive-ones/description/
//  Description:Given a binary array, find the maximum number of consecutive 1s in this array.
//  简介：给定一个二进制数组， 计算其中最大连续1的个数。
//  Example:
//  Input: [1,1,0,1,1,1]
//  Output: 3
//  Explanation: The first two digits or the last three digits are consecutive 1s.
//  The maximum number of consecutive 1s is 3.

import UIKit

class MaxConsecutiveOnes {
    /*
     解法：
     左右两个指针，移动遍历，for in 只遍历下标，能加快速度
     */
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var maxLength = 0
        var left = -1
        for i in 0..<nums.count {
            if nums[i] == 1 {
                maxLength = max(i - left, maxLength)
            }else {
                left = i
            }
        }
        return maxLength
    }
}
