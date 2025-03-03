//
//  웰컴 키트.swift
//  Algorithm
//
//  Created by 이원빈 on 3/3/25.
//

import Foundation

/// https://www.acmicpc.net/problem/30802
/// 브론즈 3
func p30802() {
  let n = Int(readLine()!)!   /// 참가자 수
  
  let sizes = readLine()!.split(separator: " ").compactMap { Int($0) }   /// 티셔츠 사이즈별 주문 수
  
  let inputs = readLine()!.split(separator: " ").compactMap { Int($0) }
  let t = inputs[0] /// 2 <= t     티셔츠 t장씩 묶음 판매
  let p = inputs[1] /// p <= 10^9  펜을 p자루씩 묶음 판매
  
  var minBundleCountOfTShirt = 0 // 티셔츠 최소 묶음 수
  
  sizes.forEach {
    let quotient = $0 / t
    let remainder = $0 % t
    
    if remainder == 0 {
      minBundleCountOfTShirt += quotient
    } else {
      minBundleCountOfTShirt += quotient + 1
    }
  }
  
  let maxBundleCountOfPen = n / p // 펜 최대 묶음 수
  let oneBundleCountOfPen = n % p // 펜 한 자루씩 묶음 수
  
  print(minBundleCountOfTShirt)
  print(maxBundleCountOfPen, oneBundleCountOfPen, separator: " ")
}
