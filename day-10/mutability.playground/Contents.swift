import UIKit

class Dog {
    var name = "Floquinho"
}

// essa propriedade poderá ser alterada

let floquinho = Dog()
floquinho.name = "Duck"

struct Dog2 {
    var name = "Duck" // utilizar mutating para métodos que precisam alterar propriedades na struct
}

// a estrutura em si é constante.

var duck = Dog2() // erro
let duck = Dog2()
duck.name = "Floquinho"
