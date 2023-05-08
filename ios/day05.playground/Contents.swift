import UIKit

// 5 - Unwrap 옵셔널변수

// 옵셔널이란?
// 값이 있는지 없는지 모른다.
var someVariable : Int? = nil   // 값이 없는 상태

// 값이 없다면 90을 넣는다.
if someVariable == nil {
    someVariable = 90
}


// Unwrap(언랩핑)이란?
// 랩 즉 감싸져있는 것을 벗기는 것

// 래핑된 상태
print("somVariable:", someVariable)

// 변수에 값이 비어있는지 확인한다.
if let otherVariable = someVariable {
    print("언래핑 되었다. 즉 값이 있다. otherVariable : \(otherVariable)")
} else {
    print("값이 없다.")
}

someVariable = nil

// someVariable 이 비어있으면, 즉 값이 없으면 기본값으로 특정값을 넣겠다.
let myValue = someVariable ?? 10
print("myValue:", myValue)

var firstValue : Int? = 30
var secondValue : Int? = nil

print("firstValue: \(firstValue)")
print("secondValue: \(secondValue)")

unwrap(parameter: firstValue)
unwrap(parameter: secondValue)

// 가드렛
func unwrap(parameter: Int?) {
    print("unwrap() called")
    // 값이 없으면 리턴 해버린다.
    // 즉 지나간다.
    guard let unWrappedParam = parameter else {
        // 값이 없으면 함수를 빠져나온다.
        return
    }
    
    print("unWrappedParam:", unWrappedParam)
}


