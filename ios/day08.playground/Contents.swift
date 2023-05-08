import UIKit

// 8 - 함수 매개변수 이름

// 함수, 메소드 정의 1 (파라미터로 이름을 정의)
func myFunction(name: String) -> String {
    return "안녕하세요?! \(name) 입니다!"
}
// 함수, 메소드를 호출한다. call
myFunction(name: "김승범")

// 함수, 메소드 정의 2 (정의한 파라미터명을 다른 이름으로 대체)
func myFunctionSecond(with name: String) -> String {
    return "안녕하세요?! \(name) 입니다!"
}
myFunctionSecond(with: "호롤롤로")

// 함수, 메소드 정의 3 (파라미터명을 입력 받고 싶지 않음)
func myFunctionThird(_ name: String) -> String {
    return "안녕하세요?! \(name) 입니다!"
}
myFunctionThird("야승범")

