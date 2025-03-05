//
//  solved.ac.swift
//  Algorithm
//
//  Created by 이원빈 on 3/5/25.
//

import Foundation

/// https://www.acmicpc.net/problem/18110
/// 실버4
func p18110() {
  let n = Int(readLine()!)!
  guard n > 0 else {
    print(0)
    return
  }
  var list = [Int]()
  
  for _ in 1...n {
    let input = Int(readLine()!)!
    list.append(input)
  }
  
  list.sort(by: <)
  
  let cap = Int(round(Double(n) * 0.15))
  let startIndex = cap
  let endIndex = (list.count - 1) - cap
  let targetList = Array(list[startIndex...endIndex])

  let avg = Int(round(Double(targetList.reduce(0, +)) / Double(list.count - (2*cap))))
  print(avg)
}
