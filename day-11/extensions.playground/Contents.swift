import UIKit

// # Extensions

extension Int {
    func squared() -> Int {
        return self * self
    }
}

// Extendendo métodos não existentes no tipo Int

var number = 8
print(number.squared())

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

var number2 = 4
print(number.isEven)

// # Extensões de protocolos

let singers = ["Bruno Mars", "Miley Cyrus", "Ed Sheeran", "Sam Smith"]
let albums = Set(["24K Magic", "Plastic Hearts", "Divide", "Love Goes"])

extension Collection { // Extende por inteiro
    func summarize() {
        print("Existem \(count) de nós:")
        
        for name in self {
            print(name)
        }
    }
}

singers.summarize()
albums.summarize()
