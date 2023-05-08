import UIKit

// 변수선언
// 다크모드 여부
var isDarkMode : Bool = false

if (isDarkMode) {
    // 출력
    print("다크모드 입니다.")
} else {
    print("다크모드가 아닙니다.")
}

if !isDarkMode {
    print("다크모드가 아닙니다.")
} else {
    print("다크모드 입니다.")
}


// 삼항연산자
var title : String = isDarkMode ? "다크모드 입니다." : "다크모드가 아닙니다."
print("title: \(title)")
