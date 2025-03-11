//
//  이항 계수1.swift
//  Algorithm
//
//  Created by 이원빈 on 3/11/25.
//

import Foundation

// https://www.acmicpc.net/problem/11050
/// 브론즈1
func p11050() {
  let input = readLine()!.split(separator: " ").compactMap { Int($0) }
  let n = input[0]
  let k = input[1]
  
  print(factorial(n) / (factorial(k) * factorial(n-k)))
  
  func factorial(_ n: Int) -> Int {
    var i = n
    var result = 1
    while i > 0 {
      result *= i
      i -= 1
    }
    return result
  }
}
/*
 dp 동적계획법을 활용?
 
 이항계수란?
 이항식을 이항정리로 전개했을 때 각 항의 계수를 나타낸다.
 이항식 (x + y)^2 = x^2 + 2xy + y^2
 이때 위의 전개 식에서 각 항의 계수인 [1,2,1] 이 이항계수이다.
 
 Combination 기호는  n 개에서 r 개를 뽑을 경우의 수를 구할 때 사용한다.
 C(n, r) = n! / r!(n - r)!  로 계산한다.
 0! = 1 이다.
 
 문제 : 자연수 N과 정수 K 가 주어졌을 때 이항 계수를 구하라.
 (a+b)^n 를 이항정리 후, K 번째 항의 계수를 구하라는 의미로 해석.
 
 C(n, K) 를 계산하여 출력하면 될 것이다.
 
 
 */
