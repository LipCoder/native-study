import UIKit

// 25 - typealias 별칭


protocol Naming {
    func getName() -> String
}

protocol Aging {
    func getAge() -> Int
}

// 여러 프로토콜을 같이 쓰기 용이하게 별칭을 붙여주겠다.
typealias Friendable = Naming & Aging
typealias FullNaming = Naming


struct Friend : Friendable {
    
    var name : String
    var age : Int
    
    func getName() -> String {
        return self.name
    }
    
    func getAge() -> Int {
        return self.age
    }
}

// 타입이면 어떤 종류든 상관없이 가능
typealias FriendName = String
var friendName : FriendName =  "김승범"


typealias Friends = [Friend]
var myFriendsArray : Friends = []

typealias StringBlock = (String) -> Void
func sayHi(completion: StringBlock) {
    print("안녕하세요")
    completion("오늘도 빡코딩하고 계신가요?")
}

sayHi(completion: {
    saying in print("여기서 받음 : \(saying)")
})


class MyClass {
    enum MY_TYPE {
        case DOG
        case CAT
        case BIRD
    }
}
typealias MyType = MyClass.MY_TYPE

//MyClass.MY_TYPE.BIRD
MyType.BIRD
