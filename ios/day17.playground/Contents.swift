import UIKit

// 17 - 에러

// 에러 정의
enum MismatchError: Error {
    case nameMismatch
    case numberMismatch
}


// 에러를 던지는 메소드
func guessMyName(name input : String) throws {
    print("guessMyName() called")
    
    if input != "쩡대리" {
        print("틀렸다")
        throw MismatchError.nameMismatch // 에러를 던짐
    }
    print("맞췄다")
}


// 하지만 에러 처리를 받지 않겠다면 '?'를 붙인다.
try? guessMyName(name: "이대리")

// 에러가 나면 안됨을 확신해야 한다면 '!'를 붙인다.
//try! guessMyName(name: "이대리")

do {
    // 에러를 던지는 메소드는 앞에 try 를 붙어야 한다.
    try guessMyName(name: "이대리")
} catch {
    print("잡은 에러: \(error)")
}


/// 번호를 맞춘다
/// - Parameter input: 사용자 숫자 입력
/// - Returns: bool 맞췄는지 여부
func guessMyNumber(number input : Int) throws -> Bool {
    print("guessMyName() called")
    
    if input != 10 {
        print("틀렸다")
        throw MismatchError.numberMismatch
    }
    print("맞췄다")
    return true
}

do {
    // 에러를 내뱉지 않는다면 receivedValue가 반환값을 받을 것이다.
    let receivedValue = try guessMyNumber(number: 9)
} catch {
    print("잡은 에러: \(error)")
}

