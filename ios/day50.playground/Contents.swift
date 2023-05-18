import UIKit

// 50 - open 키워드

// open 키워드를 통해 프로젝트 내 어디서든 사용가능
// 즉 다른 외부 모듈에서도 상속 및 오버라이드가 가능함
// 예) 오픈소스 및 외부 라이브러리 구조, 애플 프레임웍
open class Utils {
    open class func printHello() {
        print("Hello from utils")
    }
}

// 다른 모듈에서 사용가능한 점이 public 키워드와 다릅니다.
// public은 외부 모듈에서 상속 및 오버라이드가 불가능합니다.
public class MyUtils {
    public class func printHello() {
        print("Hello from MyUtils")
    }
}
