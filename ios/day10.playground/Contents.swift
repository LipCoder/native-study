import UIKit

// 10 - 클로저
// (메소드라고 볼 수 있음)

// 클로저 정의
// String 을 반환하는 클로저
let myName : String = {
    // myName 으로 들어간다
    return "김대리"
}()

print(myName)

// (String) <이라는 매개변수를 가지면서> -> String <이라는 반환값을 가진다>
let myRealName : (String) -> String = { (name: String) -> String in
    return "개발하는 \(name)"
}
myRealName("김승범")

// 파라미터 String, 반환값 Void
let myRealNameLogic : (String) -> Void = { (name: String) in
    print("개발하는 \(name)")
}
myRealNameLogic("야승범")
