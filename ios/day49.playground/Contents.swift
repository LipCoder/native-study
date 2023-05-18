import UIKit

// 49 - Range

// 0에서 2까지 - 0, 1, 2
let myRange = 0...2

// 0에서 2보다 작을때 까지 - 0, 1
let myRange2 = 0..<2
let myArray = ["철수", "영희", "제임스", "수잔"]

// 레인지를 통해 범위 설정이 가능
print(myArray[myRange])
for index in myRange {
    print(myArray[index])
}

print(myArray[myRange2])
for index in myRange2 {
    print(myArray[index])
}
