//
//  팰린드롬수.swift
//  Algorithm
//
//  Created by 이원빈 on 3/6/25.
//

import Foundation

/// https://www.acmicpc.net/problem/1259
/// 브론즈1
func p1259() {
  var resultList = [String]()
  while true {
    let input = Int(readLine()!)!
    
    guard input != 0 else {
      break
    }
    
    let reversedInput = Int(String(String(input).reversed()))
    
    if input == reversedInput {
      resultList.append("yes")
    } else {
      resultList.append("no")
    }
  }
  
  resultList.forEach {
    print($0)
  }
}
