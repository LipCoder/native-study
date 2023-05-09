import UIKit

// 19 - Set

// Set은 중복이 되지 않는다.

var myNubmerSet : Set<Int> = Set<Int>()

myNubmerSet.insert(1)
myNubmerSet.insert(2)
myNubmerSet.insert(2)   // 중복되어 추가 X
myNubmerSet.insert(3)
myNubmerSet.insert(3)   // 중복되어 추가 X

myNubmerSet.count

myNubmerSet

for item in myNubmerSet {
    print("item: \(item)")
}

var myFriend : Set<String> = ["철수", "영희", "수지"]
myFriend.contains("김승범")

var myBestFriend : [String] = ["철수", "영희", "수지"]
myBestFriend.contains("수지")

// optional unwrapping
if let indexToRemove = myFriend.firstIndex(of: "철수") {
    print("indexToRemove: \(indexToRemove)")
    myFriend.remove(at: indexToRemove)
} else {
    print("내 친구중에 철수가 없다...")
}

myFriend


