import UIKit

// 44 - 콜렉션 간 변형

let numbers = [1, 1, 1, 5, 5, 9, 7]

// 콜렉션간 변형을 통해 유일한 값을 가지는 배열로 변환이 가능합니다.
// 배열 -> 셋
let numberSet = Set(numbers)
// 셋 -> 배열
var uniqueNumbers : [Int] = Array(numberSet)

// 정렬이 되어야 하면 정렬해준다.
uniqueNumbers.sort()
print(uniqueNumbers)

