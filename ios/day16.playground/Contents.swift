import UIKit

// 16 - 메소드 매개변수 inout

func sayName(_ name: String) {
    print("안녕? 난 \(name) 라고 해")
}

func sayHi(_ name: String) {
    // 변경 불가 (파라미터는 let 형식으로 상수이다)
//  name = "개발하는 " + name
    print("안녕? 난 \(name) 라고 해")
}

sayName("김승범")


func sayHiWithInOut(_ name: inout String) {
    name = "개발하는 " + name
    print("안녕? 난 \(name) 라고 해")
}

var name = "손대영"
// inout을 파라미터로 받으려면
// var 형식이여야 하고 '&'를 앞에 붙여줘야 한다.
sayHiWithInOut(&name)
