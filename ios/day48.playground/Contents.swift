import UIKit

// 48 - 스태틱 메소드, 파이널 클래스 메소드

class MyClass {
    // 클래스 메소드는 인스턴스를 생성하지 않고 메소드 호출이 가능한데
    class func sayHi() -> String {
        return "안녕?!"
    }
    // final class 메소드랑 static class 메소드도 동일하다.
    static func sayHello() -> String {
        return "안녕하세요?!"
    }
    final class func sayHelloFinal() -> String {
        return "호호 안녕하세요?!"
    }
}

typealias mc = MyClass
print(mc.sayHi())
print(mc.sayHello())
print(mc.sayHelloFinal())

// 클래스 메소드는 오버라이딩이 가능하지만,
class HahaClass : MyClass {
    override class func sayHi() -> String {
        return "sayHi() HahaClass 에서"
    }
    
    // 스태틱과 파이널 메소드들은 부모클래스 메소드를 오버라이딩 할 수 없음
//    override static func sayHello() -> String {
//        return "sayHello() HahaClass 에서"
//    }
//
//    override class func sayHelloFinal() -> String {
//        return "sayHelloFinal() HahaClass 에서"
//    }
}

print(HahaClass.sayHi())
