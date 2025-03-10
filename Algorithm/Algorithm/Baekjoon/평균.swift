//
//  평균.swift
//  Algorithm
//
//  Created by 이원빈 on 3/10/25.
//

import Foundation

// https://www.acmicpc.net/problem/1546
/// 브론즈1
func p1546() {
  let n = Int(readLine()!)!
  let points = readLine()!.split(separator: " ").compactMap { Int($0) }
  
  let max = points.max()!
  let mappedPoints = points.map {
    (Double($0)/Double(max))*100
  }
  let sum = mappedPoints.reduce(0, +)
  print(sum / Double(n))
}
