import UIKit

// 4 - For 문

// 0에서부터 5까지 반복하겠다.
// 0, 1, 2, 3, 4, 5 (range)
// 반복을 뜻하는 iterate 때문에 i로 쓰는게 일반적 (혹은 index라는 뜻으로도 사용)
for index in 0...5 {
    print("호호 \(index)")
}

// 0부터 5보다 작을때까지
for index in 0..<5 {
    print("하하 \(index)")
}

// 짝수
for index in 0..<5 where index % 2 == 0 {
    print("하하 짝수 \(index)")
}


// var randomInts: [Int] = []
var randomInts: [Int] = [Int]() // 다른 유형의 배열 선언

// i 를 사용하고 싶지 않은 경우에는 '_'를 사용한다.
for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}

print("randomInts: \(randomInts)")
