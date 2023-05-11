import UIKit

// private(set) - 밖에서 못바꿈

struct MyPet {
    
    var title :String = "타이틀없음"
    
    // private (set) 을 붙이면 밖에서 바꿀수가 없다.
    // 즉, 접근을 할 수가 없다.
    private (set) var name : String = "이름없음"
    
    mutating func setName(to newName: String) {
        self.name = newName
    }
}

var myPet = MyPet()
myPet.name
myPet.title
myPet.title = "호로롤로롤로로로로롤"
myPet.title

// 불가능!
//myPet.name = "김승범"
myPet.setName(to: "김승범")
myPet.name

