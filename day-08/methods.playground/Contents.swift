import UIKit

// # methods

struct City {
    var population: Int
    
    // método
    func collectTaxes() -> Int {
        return population * 1000
    }
}

var paris = City(population: 4_000_000)

print(paris.collectTaxes())

// # Métodos de mutação

struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()
