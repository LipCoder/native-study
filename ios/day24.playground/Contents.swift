import UIKit

// 24 - 프로토콜 associatedType

// 프로토콜에서 제네릭을 사용하겠다.
protocol PetHaving {
    associatedtype T
    var pets: [T] { get set }
    mutating func goNewPet(_ newPet: T)
}

extension PetHaving {
    mutating func goNewPet(_ newPet: T) {
        self.pets.append(newPet)
    }
}

enum Animal {
    case cat, dog, bird
}


struct Friend : PetHaving {
    var pets: [Animal] = []
}

struct Family : PetHaving {
    var pets: [String] = []
}

var myFriend = Friend()

myFriend.goNewPet(Animal.bird)
myFriend.goNewPet(Animal.cat)
myFriend.goNewPet(Animal.dog)
myFriend.pets

var myFamily = Family()
myFamily.goNewPet("거북이")
myFamily.goNewPet("토끼")
myFamily.pets
