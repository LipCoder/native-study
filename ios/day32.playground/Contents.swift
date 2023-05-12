import UIKit

// 32 - compactMap

var myArray = ["one", "2", "three", "4"]

// map 은 변형시키는 값으로 nil 도 넣지만
let intArray = myArray.map({
    (item: String) in
        return Int(item)
})
print(intArray)


// compactMap 메소드는 변형시키는 값이 nil 이면
// 해당 요소를 제거 한다.
let onlyIntArray = myArray.compactMap({
    (item: String) in Int(item)
})
print(onlyIntArray)

