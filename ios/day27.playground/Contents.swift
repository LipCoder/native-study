import UIKit

// 27 - 고차함수 (Higher Order Functions)

// 함수의 파라미터로 클로저를 받는다.

func getName(_ name: String) -> String {
    return "내 이름은 \(name)"
}

var getNameClosure : (String) -> String

func sayHello( getName: (String) -> String, name: String )
    -> String {
    return getName(name)
}

let resultOne = sayHello(getName: getName, name: "호롤롤로")


let numbers = [3, 7, 4, -2, 9, -6, 10, 1]

let stringNumbers : [String] = numbers.map {
    (aNumber: Int) -> String in
        return "\(aNumber) 입니다."
}

let evenNumbers : [Int] = numbers.filter {
    aNumber in
        return aNumber % 2 == 0
}

let oddNumbers : [Int] = numbers.filter {
    aNumber in
        return aNumber % 2 != 0
}
