import UIKit

struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user")
    }
}

var user = User() // Não aceita parâmetros
user.username

//MARK: - # Referindo-se à instância atual

struct Person {
    var name: String
    
    init(name: String) {
        print("\(name) nasceu!")
        self.name = name // self vai se referir ao parâmetro do init
    }
}

var person = Person(name: "João Alexandre")
