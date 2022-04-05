import UIKit

// # Estruturas

struct Dog {
    var name: String
    var age: Int
    
    // Método
    func makeNoise() {
        print("Latido!")
    }
}

let floquinho = Dog(name: "Floquinho", age: 10)

print(floquinho.name)
print(floquinho.age)
floquinho.makeNoise()

