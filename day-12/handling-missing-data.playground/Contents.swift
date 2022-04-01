import UIKit

// # Manipulando dados ausentes

var age: Int? = nil // pode não conter valor algum

age = 21

// # Desempacotando opcionais

var lastName: String? = nil

if let unwrapped = lastName {
    print("\(unwrapped.count) latters.")
} else {
    print("Missing name")
}

// Desembrulhar com guard

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    
    print("Hello, \(unwrapped)!")
}

greet("Jorge")

// # Forçar desempacotamento

let sttr = "4"
var number = Int(sttr)!

// # Opcionais implicitamente desempacotados

let city: String! = nil

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 23) ?? "Anonymous"
print(user)

// # Encadeamento opcional

let names = ["Spider Man", "Iron Man", "Batman", "Super Man", "Shazam", "Flash"]

let heroes = names.first?.uppercased() ?? "Valor nulo"

print(heroes)

// # Tentativa opcional

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

// Se a função lançar um erro, será enviado o resultado nulo, caso contrário, você obterá o valor de retorno encapsulado como opcional.

if let result = try? checkPassword("password") {
    print("Sua senha é \(result)")
} else {
    print("Oh, não a senha é muito óbvia")
}

// usar quando tiver certeza de que a função não falhará. Se a função lançar um erro e o código falhará.

try! checkPassword("sekrit")
print("OK!")

// # Inicializadores com falha

struct Person {
    var id: String
    
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

let person = Person(id: "João Alexandre Bitar")
print(person ?? "fail")

// # Tipos

class Animal {
    
}

class Fish: Animal {
    
}

class Dog: Animal {
    func makeNoise() {
        print("Latido!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

// Verificar os tipos
for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
