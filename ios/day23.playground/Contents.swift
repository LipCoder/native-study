import UIKit

// 23 - 프로토콜 확장

protocol Naming {
    var lastname: String { get set }
    var firstname: String { get set }
    func getName() -> String
    func getFullname() -> String
}

// protocol이 로직을 구현하고 싶을 경우 사용
extension Naming {
    func getFullname() -> String {
        return self.lastname + " " + self.firstname
    }
}

struct Friend : Naming {
    var lastname: String
    var firstname: String
    func getName() -> String {
        return self.lastname
    }
}

let myFriend = Friend(lastname: "승범", firstname: "김")

myFriend.getName()
myFriend.getFullname()
