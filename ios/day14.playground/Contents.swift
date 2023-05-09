import UIKit

// 14 - 딕셔너리

// 키 : 값
var myFriend = ["bestFriend" : "쩡대리",
                "highSchool" : "영희"
                ]

// 조회
let myBestFriend = myFriend["bestFriend"]
let highSchoolFriend = myFriend["highSchool"]

// 값이 업으면 nil, nil일 경우 default값을 사용
let youtubeFriend = myFriend["youtube", default: "친구없음"]

// 수정
myFriend["bestFriend"] = "개발하는 정대리"
let myBF = myFriend["bestFriend"]

myFriend.updateValue("수잔", forKey: "girlFriend")
let myGirlFriend = myFriend["girlFriend"]

myFriend.updateValue("잭슨", forKey: "bestFriend")
let myBF1 = myFriend["bestFriend"]

// 추가
myFriend["newFriend"] = "철수"
let newFriend = myFriend["newFriend"]


// 빈 딕셔너리 선언 방법
let emptyDictionary : [String : Int] = [:]
let emptyDictionary1 : [String : Int] = [String : Int]()
let emptyDictionary2 = [String : Int]()
let emptyDictionary3 : [String : Int] = Dictionary<String, Int>()


myFriend.count

for item in myFriend {
    print("item : \(item)")
}
