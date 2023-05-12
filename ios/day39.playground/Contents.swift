import UIKit


// 39 - 멀티 트레일링 클로저

func someFunctionWithCloser(completion: () -> Void,
                            secondCompletion: (String) -> Void,
                            thirdCompletion: (Int) -> Void) {
    print("someFunctionWithClosure() called")
    
    completion()
    secondCompletion("두번째 클로저")
    thirdCompletion(3)
}

// 멀티 트레일링 클로저 사용이 가능합니다.
someFunctionWithCloser {
    print("empty")
} secondCompletion: {
    print("\($0)")
} thirdCompletion: {
    print("\($0)")
}
