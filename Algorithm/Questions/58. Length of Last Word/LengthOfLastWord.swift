//
//  LengthOfLastWord.swift
//  Algorithm
//
//  Created by caohouhong on 2018/5/31.
//  Copyright © 2018年 caohouhong. All rights reserved.
//  题目地址：https://leetcode.com/problems/length-of-last-word/description/
//  Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word in the string.
//  If the last word does not exist, return 0.
//  简介：给定一个有大写、小写、空格的字符串， 计算最后一个单词的长度。
//  Example:
//  Input: "Hello World"
//  Output: 5
//  Note: A word is defined as a character sequence consists of non-space characters only.

import UIKit

class LengthOfLastWord {
    /* 解法分析
       1、指定左右两个指针
       2、倒序遍历字符串
       3、如果左右指针不等并且字符等于空格的话证明一个word遍历完毕
       4、每次右指针加一，如果字符为空格，则左指针位置加一
     */
    func lengthOfLastWord(_ s: String) -> Int {
        var left = 0
        var right = 0
        for i in s.reversed(){
            // 如果开头有空格，则左右指针都会右移动，当遍历到word后开始不同，等下次再碰到空格，则遍历结束
            if (String(i) == " " && left != right){
                break
            }
            if String(i) == " " {
                left += 1
            }
            right += 1
        }
        return right - left
    }
}
