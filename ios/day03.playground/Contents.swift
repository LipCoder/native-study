import UIKit

// 3. ENUM

// 학교 - 초, 중, 고
enum School {
//    case elementry
//    case middle
//    case high
    case elementry, middle, high
}

// var : 값 변경 가능
// let : 값 변경 불가능(상수)
let yourSchool = School.high
//print("yourSchool: \(yourSchool)")
print("yourSchool:", yourSchool)  // 변수가 하나라면 다음과 같이 사용 가능

enum Grade : Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second.rawValue   // 날 것의 값을 줘라
print("yourGrade:", yourGrade)

// 값을 정의할 수 있는 enum
enum SchoolDetail {
    case elementry(name: String)
    case middle(name: String)
    case high(name: String)
    
    // 함수
    func getName() -> String {
        // switch 문
        switch self {
        case .elementry(let name):
            return name
        case let .middle(name):
            return name
        case .high(let name):
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "저동중학교")
print("yourMiddleSchoolName:", yourMiddleSchoolName.getName())
