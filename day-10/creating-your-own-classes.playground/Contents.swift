import UIKit

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

var poppy = Dog(name: "floquinho", breed: "Poodle")

// # Herança de classe

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "poodle")
    }
}

var floquinho = Poodle(name: "floquinho")
print(floquinho.breed)
