import UIKit

// 15 - 파이널 클래스

// final 키워드를 이용하면 상속을 못하게 막는 것
final class Friend {
    
    var name : String
    
    init(name: String) {
        self.name = name
    }
}


class BestFriend : Friend {
    
    override init(name: String) {
        super.init(name: "베프 " + name)
    }
}

let myFriend = Friend(name: "쩡대리")
let myBestFriend = BestFriend(name: "철수")
