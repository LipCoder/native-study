import UIKit

// 33 - flatMap

// 콜렉션 안에 콜렉션이 들어있는 형태의 2차원 배열
let myFriends = [ ["철수"], ["영희"], ["제임스", "본드"], ["스티브", "잡스"], ["개발하는", "정대리"] ]

// flatMap을 통해 1차원으로 만들어줍니다. (flat : 납작하게 만든다)
let flatMapped = myFriends.flatMap({
    (item: [String]) in
        return item
})
print (flatMapped)


 
