//
//  PlusOne.swift
//  Algorithm
//
//  Created by caohouhong on 2018/5/28.
//  Copyright © 2018年 caohouhong. All rights reserved.
//  题目地址：https://leetcode.com/problems/plus-one/description/
//  Description:Given a non-empty array of digits representing a non-negative integer, plus one to the integer.
//  The digits are stored such that the most significant digit is at the head of the list, and each element in the array contain a single digit.
//  You may assume the integer does not contain any leading zero, except the number 0 itself.
//  简介：给一个非负整数组成的非空数组，在此数组基础上加一，返回一个新的数组
//  
//  Example:
//  Input: [1,2,3]
//  Output: [1,2,4]
//  Explanation: The array represents the integer 123.
//  Difficulty:Easy
import UIKit

class PlusOne {
    /*
     解法：
     倒序遍历
     如果数字小于9则加1返回
     如果数字等于9，则置0，如果最后一个数字也置为0的话，则证明这个数组全为9，前面加一位为1
     */
    func plusOne(_ digits: [Int]) -> [Int] {
        var nums = digits
        let count = digits.count - 1
        for (i,item) in digits.reversed().enumerated() {
            if item < 9 {
                nums[count - i] += 1
                break
            }else {
                nums[count - i] = 0
                if i == count  {
                    nums.insert(1, at: 0)
                }
            }
        }
        return nums
    }
}
