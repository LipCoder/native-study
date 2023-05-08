import UIKit

// 콜렉션 - 데이터를 모아둔 것
//  배열(Array)
//  셋(Set)
//  딕셔너리(Dictionary)
//  튜플 등...
var myArray : [Int] =
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// foreach
for item in myArray {
    // myArray 안에 있는 요소(item)를 가져와서 사용하겠다.
    print("item: \(item)")
}

// 조건과 함께 사용
for item in myArray where item > 5 {
    // 5보다 큰 요소들만 가져오겠다.
    print("5보다 큰 수: \(item)")
}
for item in myArray where item % 2 == 0 {
    print("짝수: \(item)")
}
for item in myArray where item % 2 != 0 {
    print("홀수: \(item)")
}
