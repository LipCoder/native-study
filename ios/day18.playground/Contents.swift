import UIKit

// 18 - struct metating

class Friend {
    var name : String
    
    func changeName(newName: String) {
        self.name = newName
    }
    
    init(_ name : String) {
        self.name = name
    }
}

var myFriend = Friend("김승범")

myFriend.changeName(newName: "개발하는 김승범")
myFriend.name



struct BestFriend {
    var name : String

    // struct의 메소드 안에서 쓰기 작업을 해야하는 경우에
    // 'mutating' 키워드를 붙여줘야 한다.
    mutating func changeName(newName: String) {
        self.name = newName
    }

}

var myBestFriend = BestFriend(name: "야승범")
myBestFriend.changeName(newName: "심승범")
