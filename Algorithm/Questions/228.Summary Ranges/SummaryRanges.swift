//
//  SummaryRanges.swift
//  Algorithm
//
//  Created by caohouhong on 2018/5/24.
//  Copyright © 2018年 caohouhong. All rights reserved.
//  题目地址:https://leetcode.com/problems/summary-ranges/description/
//  Description:Given a sorted integer array without duplicates, return the summary of its ranges.
//  简介：给一个无重复元素的有序整数数组，返回数组区间范围的汇总
//  Example
//  Input:[0,1,2,5,6,8]
//  Output:["0->2","5->6","8"]
//  Difficulty:Medium
import UIKit

class SummaryRanges {
    /*
     第一次的解法
     1、先计算数组为空或者元素数1个的情况
     2、定义左右两个指针，循环遍历
     3、解决最后一个元素情况
    */
    func summaryRanges1(_ nums: [Int]) -> [String] {
        if nums.count == 0 {
            return []
        }else if nums.count == 1 {
            return ["\(nums[0])"]
        }
        var left = nums[0]
        var right = nums[0]
        var array:[String] = []
        for (index, item) in nums.enumerated() {
            if index == 0 {
                continue
            }
            right = nums[index - 1]
            if (item - right > 1) {
                array.append((left == right) ? "\(left)" : "\(left)->\(right)")
                left = item
            }
            if (index == nums.count - 1){
                array.append((item - right > 1) ? "\(item)" : "\(left)->\(item)")
            }
        }
        return array
    }
    
    /*
     优化后的解法，参考网上
     1、定义一个开始指针指向第一个和一个空数组存储结果
     2、先进行下标的判断，如果i+1<nums.count则不是最后一个，nums[i + 1]也不会越界，判断是否符合连续，如果没有越界并且连续，则跳出本次循环
     3、如果不符合要求，则进行指针判断，如果指针当前下标，则证明就循环了这一个数据
     4、如果开始指针不等于当前下标，则证明有多个数据符合了
     5、重置开始指针
    */
    func summaryRanges2(_ nums: [Int]) -> [String] {
        var startRange = 0
        var array:[String] = []
        for (i,item) in nums.enumerated() {
            if (i+1 < nums.count && item == nums[i + 1] - 1) {
                continue
            }
            if (startRange == i){
                array.append("\(item)")
            }else {
                array.append("\(nums[startRange])->\(item)")
            }
            startRange = i + 1
        }
        return array
    }
}
