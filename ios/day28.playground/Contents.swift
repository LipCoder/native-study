import UIKit

// 28 - 고차함수 (sort, sorted)

var myArray = [3, 4, 88, 99, 5, 6, 7, 8, 10, 20, 100]


// 정렬된 결과를 반환
var orderedArray = myArray.sorted()
// 자체를 정렬하여 변화시킨다.
myArray.sort()

var decendingArray = myArray.sorted(by: >)
myArray.sort(by: >)



//
struct Todo : Comparable, Hashable {
 
    // 아이디 정렬 비교방식
    static func < (lhs: Todo, rhs: Todo) -> Bool {
        return lhs.id < lhs.id
//        return lhs.createdAt < rhs.createdAt
    }
    
    var id : Int
    var title : String
}
