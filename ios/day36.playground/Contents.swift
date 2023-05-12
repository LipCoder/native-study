import UIKit

// 36 - DI(Dependency Injection) 의존성 주입

// sayHi를 강제하는 토크 프로토콜
protocol Talk {
    func sayHi()
}

// 베프, 올드프렌드 토크 클래스들은 토크 프로토콜을 임플리먼트하므로
// sayHi 메소드 정의가 강제됨
class BestFriendTalk: Talk {
    func sayHi() {
        print("오호 오늘도 빡코딩 하는중?")
    }
}

class OldFriendTalk: Talk {
    func sayHi() {
        print("어이 올만이여~!")
    }
}

// 친구 클래스
class Friend {
    // 멤버변수로서 토크를 가진다.
    // 외부에서도 주입이 가능하도록 프라이빗으로 하지 않는다.
    var talk: Talk?
    init() {}
    
    // 생성자 메소드를 통해 토크 주입가능
    init(talk: Talk) {
        self.talk = talk
    }
    
    // 의존성 주입이 완료된? 토크로 말한다.
    func sayHello() {
        talk?.sayHi()
    }
    
    // 의존성 주입 메소드
    func setTalk(talk: Talk) {
        self.talk = talk
    }
}
// 친구 인스턴스 생성시에 토크를 주입
let bfTalk = BestFriendTalk()
let myBestFriend = Friend(talk: bfTalk)
myBestFriend.sayHello()

// 친구 인스턴스를 만들고 멤버 변수에 찔러넣어 주입
let myOldFriendTalk = OldFriendTalk()
let myOldFriend = Friend()
myOldFriend.talk = myOldFriendTalk
myOldFriend.sayHello()


// 의존성 주입은 크게 3가지 방법
// 1. 생성자 메소드를 통해 찔러넣기
// 2. 멤버변수에 직접 찔러넣기
// 3. 주입 메소드르르 따로 만들어 찔러넣기 (잘 사용하지 않는 것 같음)
