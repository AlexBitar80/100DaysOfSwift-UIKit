import UIKit

// # métodos de substituição

class Dog {
    func makeNoise() {
        print("Latido!")
    }
}

class BorderCollie: Dog {
    override func makeNoise() {
        print("latido alterado!")
    }
}

// classe final

final class Dog2 { // não permite herança ou substituição de métodos por outra classe
    func makeNoise() {
        print("Latido!")
    }
}

var poodle = Dog2()
poodle.makeNoise()

//class Poodle: Dog2 {
//    override func makeNoise() {
//        print("latido alterado!")
//    }
//}
