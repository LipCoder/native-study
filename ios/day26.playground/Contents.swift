import UIKit

// 26 - lazy 키워드


struct Pet {
    init() {
        print("Pet 이 생성되었다.")
    }
}

struct Friend {
    
    var name: String
    
    // 사용할때 메모리에 올리겠다.
    lazy var pet: Pet = Pet()
    
    init(_ name: String) {
        self.name = name
        print("Friend 가 생성됨")
    }
}

var myFriend = Friend("김승범")
myFriend.pet

