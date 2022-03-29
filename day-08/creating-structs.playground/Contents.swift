import UIKit

// # Creating Structs

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")

print(tennis.name) // acessando propriedades

tennis.name = "Football" // alterando propriedades

print(tennis.name)
