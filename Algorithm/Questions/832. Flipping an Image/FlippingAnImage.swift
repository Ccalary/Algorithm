//
//  FlippingAnImage.swift
//  Algorithm
//
//  Created by caohouhong on 2018/5/24.
//  Copyright © 2018年 caohouhong. All rights reserved.
//  题目地址：https://leetcode.com/problems/flipping-an-image/description/
//  Description：
//  Given a binary matrix A, we want to flip the image horizontally, then invert it, and return the resulting image.
//  To flip an image horizontally means that each row of the image is reversed.  For example, flipping [1, 1, 0] horizontally results in [0, 1, 1].
//  To invert an image means that each 0 is replaced by 1, and each 1 is replaced by 0. For example, inverting [0, 1, 1] results in [1, 0, 0].
//  简介：给定一个二进制矩阵 A，我们想先水平翻转图像，然后反转图像并返回结果。
//  水平翻转图片就是将图片的每一行都进行翻转，即逆序。例如，水平翻转 [1, 1, 0] 的结果是 [0, 1, 1]。
//  反转图片的意思是图片中的 0 全部被 1 替换， 1 全部被 0 替换。例如，反转 [0, 1, 1] 的结果是 [1, 0, 0]。
//  Example
//  Input: [[1,1,0],[1,0,1],[0,0,0]]
//  OutPut: [[1,0,0],[0,1,0],[1,1,1]]
//  Difficulty:Easy
import UIKit

class FlippingAnImage {
   /*
     1、首选创建一个数组和A相同
     2、遍历取出A中的数组array
     3、多array进行反转操作，然后遍历
     4、对array中的元素进行与1异或（0、1与1异或的结果就是0->1,1->0）如果a、b两个值不相同，则异或结果为1。如果a、b两个值相同，异或结果为0。
   */
   static func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
        var nums = A
        for (i, array) in nums.enumerated(){
            for (j, item) in array.reversed().enumerated(){
                nums[i][j] = item ^ 1 // 异或
            }
        }
        return nums
    }
}
