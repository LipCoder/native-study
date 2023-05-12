import UIKit

// 35 - Dictionary를 이용한 그룹핑

// 커스텀 친구 타입
enum FriendType {
    case normal, best
}

// 친구타입을 멤버변수로 가지는 친구 스트럭트
struct Friend {
    var name : String
    var type : FriendType
}

let first = Friend(name: "철수", type: .normal)
let second = Friend(name: "영희", type: .best)
let third = Friend(name: "제임스", type: .best)
let fourth = Friend(name: "수잔", type: .normal)

var friendList = [first, second, third, fourth]
//print(friendList)


// 딕셔너리를 통해 키, 값으로 배열 그룹핑이 가능합니다.
// 적용 예) 키 : 친구타입, 값 : 요소 아이템
let groupedList = Dictionary(grouping: friendList) {
    (friend) -> FriendType in return friend.type
}
print(groupedList)

// 아래와 같이 간단하게 표현도 가능합니다.
let groupedListSimple = Dictionary(grouping: friendList, by: {$0.type})
print(groupedListSimple)

