//
//  A+B-C.swift
//  Algorithm
//
//  Created by 이원빈 on 3/2/25.
//

import Foundation

/// https://www.acmicpc.net/problem/31403
/// 브론즈4
func p31403() {
  var inputList = [Int]()
  
  for _ in 1...3 {
    let input = Int(readLine()!)!
    inputList.append(input)
  }
  
  let firstResult = inputList[0] + inputList[1] - inputList[2]
  let secondResult = Int(String(inputList[0]) + String(inputList[1]))! - inputList[2]
  
  print(firstResult)
  print(secondResult)
}
