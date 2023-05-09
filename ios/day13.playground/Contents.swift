import UIKit

// 13 - 상속

class Friend {
    var name: String
    
    init(_ name: String) {
        self.name = name
    }
    
    func sayHi() {
        print("안녕?! 난 \(self.name) 라고 해")
    }
}

// Friend 를 상속
class BestFriend : Friend {
    
    // override로 부모의 메소드를 가져왔다.
    override init(_ name: String) {
        // super 로 부모의 메소드를 사용
        super.init("베프 " + name)
    }
    
    override func sayHi() {
        super.sayHi()
    }
}

let myFriend = Friend("쩡대리")
myFriend.sayHi()

let myBestFriend = BestFriend("영희")
myBestFriend.sayHi()
