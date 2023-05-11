import UIKit

// 30 - foreach 문에서 인덱스 같이 가져오기 (enumerated)

let myFriendArray : [String] = ["철수", "영희", "승범", "지수", "화영"]

var friendsWithIndex : [String] = []


// enumerated를 이용하여 index를 같이 가져오겠다.
for (index, aFriend) in myFriendArray.enumerated() {
    print("index : \(index), item : \(aFriend)")
    friendsWithIndex.append("\(index).번 \(aFriend)")
}

