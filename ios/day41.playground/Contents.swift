import UIKit

// 41 - 빌더패턴 객체 생성

struct Friend {
    var name : String? = ""
    var age : Int? = 0
}

class FriendBuilder {
    private var friend : Friend = Friend()
    public func withName(_ name: String) -> FriendBuilder {
        // 만들고자 하는 필드를 설정
        friend.name = name
        // 빌더 자기 자신을 반환,
        // 이를통해 메서드체이닝으로 유연한 설정이 가능
        return self
    }
    public func withAge(_ age: Int) -> FriendBuilder {
        friend.age = age
        return self
    }
    // 마지막으로 빌더가 만든 객체를 반환하면서 마무리
    public func build() -> Friend {
        return self.friend
    }
}

// 빌더패턴을 이용하여 객체 생성을 유연하게 할 수 있다.
let myFriend = FriendBuilder()
    .withName("김승범")
    .withAge(30)
    .build()
print("myFriend: ", myFriend)

