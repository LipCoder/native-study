import UIKit

// 11 - 클로저 사용법

// () -> Void
func completion() {
    
}

// (String) -> Void
func completion(userInput: String) {
    
}

// (String, String) -> Void
func completion(first: String, second: String) {
    
}

// (Int) -> String
func transform(number: Int) -> String {
    return "숫자: \(number)"
}


// 클로저를 매개변수로 가지는 메소드로 정의
func sayHi(completion: () -> Void) {
    print("sayHi() called")
    sleep(2) // 2초 멈추기
    // completion 클로저 실행
    completion()
}

//// 메소드 호출부에서 이벤트 종료를 알 수 있다.
//sayHi (completion:  {
//    print("2초가 지났다. 1")
//})
//// 방법 2
//sayHi() {
//    print("2초가 지났다. 2")
//}
//// 방법 3
//sayHi{
//    print("2초가 지났다. 3")
//}


// 매개변수로서 데이터를 반환하는 클로저
func sayHiWithName(completion: (String) -> Void) {
    print("sayHiWithName() called")
    sleep(2) // 2초 멈추기
    // 클로저를 실행과 동시에 데이터 변환
    completion("오늘도 빡코딩 하고 계신가요?")
}

//sayHiWithName(completion: { (comment: String) in
//    print("2초 뒤에 그가 말했다! comment:", comment)
//})
//
//sayHiWithName(completion: { comment in
//    print("2초 뒤에 그가 말했다! comment:", comment)
//})
//
//sayHiWithName{ comment in
//    print("2초 뒤에 그가 말했다! comment:", comment)
//}
//
//sayHiWithName{
//    print("2초 뒤에 그가 말했다! comment:", $0)
//}


// 매개변수로서 데이터를 여러개 반환하는 클로저
func sayHiWithFullName(completion: (String, String) -> Void) {
    print("sayHiWithFullName() called")
    sleep(2) // 2초 멈추기
    // 클로저를 실행과 동시에 데이터 변환
    completion("오늘도 빡코딩 하고 계신가요?", "호롤롤로")
}

//sayHiWithFullName { first, second in
//    print("첫번쨰: \(first), 두번째: \(second)")
//}
//
// '_' 를 사용하여 매개변수를 생략할 수도 있다.
//sayHiWithFullName { _, second in
//    print("두번째: \(second)")
//}
//
//sayHiWithFullName {
//    print("첫번쨰: \($0), 두번째: \($1)")
//}

// 옵셔널을 사용하여 클로저를 받는다
func sayHiOptional(completion: (() -> Void)? = nil) {
    print("sayHiOptional() called")
    sleep(2)
    completion?() // 옵셔널이 존재하면 호출된다.
}

//sayHiOptional {
//
//}
//
//sayHiOptional()
//
//sayHiOptional(completion: {
//    print("2초가 지났다.!!")
//})


var myNumbers : [Int] = [0, 1, 2, 3, 4, 5]

// 클로저는 콜렉션에서 어떠한 형태를 내뱉을 경우에 사용한다.
var transformedNumbers = myNumbers.map { aNumber in
    return "숫자: \(aNumber)" // 모든 요소의 숫자를 문자열로 변환
}
print(transformedNumbers)

var transformedNumbers1 = myNumbers.map { (aNumber: Int) -> String in
    return "숫자: \(aNumber)" // 모든 요소의 숫자를 문자열로 변환
}
print(transformedNumbers1)

var transformedNumbers2 = myNumbers.map {
    return "숫자: \($0)" // 모든 요소의 숫자를 문자열로 변환
}
print(transformedNumbers2)
