import UIKit

// 31 - map 고차함수
// 맵 고차함수를 통해 콜렉션의 요소를 변형시킬수 있습니다.

let friendArray = ["철수", "영희", "수잔", "제임스", "마크"]
// 배열 매핑
let myFriends = friendArray.map{
    "내친구: " + $0
}

let myPetDictionary = ["고양이" : "야옹", "강아지" : "멍멍", "송아지" : "음매"]
// 딕셔너리 매핑
let myPets = myPetDictionary.map{ (kind, sound) in
    return ("우리집: \(kind)", "울음소리: \(sound)")
}
print(myPets)


// Set 자료구조는 중복이 허용되지 않음
let numberSet : Set<Int> = [1, 1, 2, 3, 4, 4, 5]
// 셋 매핑
let result = numberSet.map({
    (number: Int) -> Int in
        return number * 10
})
print("mappedNumberSet: \(result)")


// 아래와 같은 방식으로 클로저 부분 축약 가능
let resultOne = numberSet.map({
    (number: Int) in
        return number * 10
})

let resultTwo = numberSet.map({
    (number: Int) in number * 10
})

let resultThree = numberSet.map({ $0 * 10 })

let resultFour = numberSet.map{ $0 * 10 }
