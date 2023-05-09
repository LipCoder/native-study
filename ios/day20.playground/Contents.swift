import UIKit


// 20 - 스트럭트 메소드

struct Friend {

    var name : String
    var age : Int
    
    func sayHello() -> String {
        print("sayHello()")
        return "저는 \(age)살, \(name) 입니다."
    }
}

var myFriend = Friend(name: "김승범", age: 10)
myFriend.sayHello()
