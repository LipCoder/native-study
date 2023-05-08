import UIKit

// 6 - 클래스 vs 스트럭트


// 유튜버 (데이터) 모델 - struct / 구조체
struct YoutuberStruct {
    var name : String
    var subscribersCount : Int
}

var devBoem = YoutuberStruct(name: "김승범", subscribersCount: 99999)

var devBoemClone = devBoem
print("값 넣기 전 devBoemClone.name: ", devBoemClone.name)

devBoemClone.name = "야승범"
// 값을 복사했기 때문에 둘은 다르다.
print("값 넣기 후 devBoemClone.name: ", devBoemClone.name)
print("값 넣기 후 devBoem.name:", devBoem.name)


// 클래스
class YoutuberClass {
    var name : String
    var subscribersCount : Int
    
    // 생성자
    // init으로 매개변수를 가진 생성자 메소드를 만들어야
    // 매개변수를 넣어 그 값을 가진 객체(object)를 만들수 있다.
    init(name: String, subscribersCount: Int) {
        self.name = name
        self.subscribersCount = subscribersCount
    }
}

var devKim = YoutuberClass(name: "김평곤", subscribersCount: 88888)

// 클래스를 만들면 한 곳에 메모리를 할당하고 변수(인스턴스)는 그 메모리 위치를 참조하고 있는 형식이다.
// 따라서 origin 변수를 clone을 할 경우 해당 clone 변수 또한 원본이 위치하는 메모리를 참조하고 있다.
// 그러므로 clone의 값을 변경하면 원본의 값을 바꾸는 것이므로 origin 변수의 값도 바뀐 것으로 나타난다.
var devKimClone = devKim
print("값 넣기 전 devKimClone.name:", devKimClone.name)

devKimClone.name = "평곤's"
print("값 넣기 후 devKimClone.name:", devKimClone.name)
print("값 넣기 후 devKim.name:", devKim.name)
