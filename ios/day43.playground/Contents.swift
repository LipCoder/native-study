import UIKit

// 43 - 고차함수 reduce

struct Friend{
    var name: String
    var age: Int
}

let myFriend = [Friend(name: "철수", age: 10),
                Friend(name: "영희", age: 10),
                Friend(name: "수잔", age: 20),]

// reduce 를 통해 콜렉션으로 하나 값 계산이 가능하다.
// $0 : 결과 / $1 : 각 아이템
let totalAge_00 = myFriend.reduce(10, { // 10 은 처음 result 에 대한 초기값
    (result: Int, nextItem: Friend) -> Int in
        return result + nextItem.age
})

// 축약하여 표현 가능
let totalAge_01 = myFriend.reduce(0, {
    (result: Int, nextItem: Friend) in
        return result + nextItem.age
})

let totalAge_02 = myFriend.reduce(0, { result,
    nextItem in return result + nextItem.age
})

let totalAge_03 = myFriend.reduce(0, { result,
    nextItem in result + nextItem.age
})

let totalAge_04 = myFriend.reduce(0, { $0 + $1.age })
let totalAge_05 = myFriend.reduce(0) { $0 + $1.age }

