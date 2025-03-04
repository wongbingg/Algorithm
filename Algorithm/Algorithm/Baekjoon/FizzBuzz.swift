//
//  FizzBuzz.swift
//  Algorithm
//
//  Created by 이원빈 on 3/4/25.
//

import Foundation

/// https://www.acmicpc.net/problem/28702
/// 브론즈 1
func p28702() {
  var resultNum = 0
  var resultStr = ""
  
  for i in 1...3 {
    let input = String(readLine()!)
    if let number = Int(input) {
      let offset = 4 - i
      resultNum = number + offset
      break
    }
  }
  
  if resultNum % 3 == 0 {
    resultStr += "Fizz"
  }
  
  if resultNum % 5 == 0 {
    resultStr += "Buzz"
  }
  
  if resultStr == "" {
    print(resultNum)
  } else {
    print(resultStr)
  }
}
/// 세개의 입력값 중, Int 로 변환 가능한 숫자를 찾아 -> n
/// n 의 위치파악 후 4번째 index에 올 숫자를 구해
/// 이 숫자가 3 또는 5의 배수인지 확인
