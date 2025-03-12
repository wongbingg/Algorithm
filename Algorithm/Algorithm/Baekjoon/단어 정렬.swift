//
//  단어 정렬.swift
//  Algorithm
//
//  Created by 이원빈 on 3/12/25.
//

import Foundation

// https://www.acmicpc.net/problem/1181
/// 실버5
func p1181() {
  let n = Int(readLine()!)!
  var list = [String]()
  
  (1...n).forEach { _ in
    let input = String(readLine()!)
    list.append(input)
  }
  
  let listSet = Set(list)
  let list2 = Array(listSet)
  let result = list2.sorted {
    if $0.count == $1.count {
      return $0 < $1
    }
    return $0.count < $1.count
  }
  result.forEach {
    print($0)
  }
}
