import UIKit

// # Propriedades

//struct Person {
//    var clothes: String
//    var shoes: String
//
//    func describe() {
//        print("I like wearing \(clothes) with \(shoes)")
//    }
//}
//
//let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
//let other = Person(clothes: "short skirts", shoes: "high heels")
//taylor.describe()
//other.describe()

//MARK: - Observadores de propriedades

struct Persons {
    var clothes: String {
        // executado antes da propriedade ser alterada
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }

        // executado depois da propriedade ser alterada
        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor = Persons(clothes: "T-shirts")
taylor.clothes = "short skirts"

//MARK: - Propriedades computadas

struct Dog {
    var age: Int

    var ageInHumanYears: Int {
        get {
            return age * 3
        }
        
        // somente leitura 
//        var ageInDogYears: Int {
//            return age * 7
//        }
    }
}

var fan = Dog(age: 25)
print(fan.ageInHumanYears)
