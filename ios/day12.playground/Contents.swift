import UIKit

// 12 - 객체 생성자, 해제자

class MyFriend {
    
    var name : String
    
    // 생성자(메모리에서 할당될때)
    init(_ name: String = "이름없음") {
        self.name = name
        print("MyFriend 가 메모리에 올라갔다 - ", self.name)
    }
    
    // 해제자(메모리에서 사리질때)
    deinit {
        print("메모리에서 사라짐 - ", self.name)
    }
    
    // deinit 검증을 위해 작성
    var calledTimes = 0
    let MAX_TIMES = 5
    
    static var instancesOfSelf = [MyFriend]()
    
    class func destroySelf(object: MyFriend) {
        instancesOfSelf = instancesOfSelf.filter{ (aFriend : MyFriend) in
            aFriend !== object
        }
    }
    
    func call() {
        calledTimes += 1
        print("called \(calledTimes)")
        if calledTimes > MAX_TIMES {
            MyFriend.destroySelf(object: self)
        }
    }
}

let myFriend = MyFriend("쩡대리")
let aFriend = MyFriend()

// Unmanaged.passUnretained(객체).toOpaque()
// 로 해당 객체의 메모리 주소를 프린트 할 수 있습니다.
let anObjectMemoryAddress = Unmanaged.passRetained(aFriend).toOpaque()
let secondMemoryAddress = Unmanaged.passRetained(myFriend).toOpaque()

print(anObjectMemoryAddress)
print(secondMemoryAddress)


weak var aFriendToBeDestoried = MyFriend("개발하는 정대리")

if aFriendToBeDestoried != nil {
    aFriendToBeDestoried!.call()
} else {
    print("객체가 더 이상 메모리에 없습니다.")
}

