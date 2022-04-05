import UIKit

// # classes

// # Diferenças entre Class e Struct
// - Você não obtém um inicializador automático de membro para suas classes; você precisa escrever o seu próprio.
// - Você pode definir uma classe como sendo baseada em outra classe, adicionando quaisquer coisas novas que desejar.
// - Quando você cria uma instância de uma classe, ela é chamada de objeto. Se você copiar esse objeto, ambas as cópias apontam para os mesmos dados por padrão – altere um e a cópia também será alterada.

class Singer {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func sing() {
        print("La la la la")
    }
}

var taylor = Singer(name: "Taylor", age: 25)
taylor.name
taylor.age
taylor.sing()

// # Herança de classe

class CountrySinger: Singer {
    override func sing() {
        print("Trucks, guitars, and liquor")
    }
}

class HeavyMetalSinger: Singer {
    var noiseLevel: Int

    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }

    // Alteração de método
    override func sing() {
        print("Grrrrr rargh rargh rarrrrgh!")
    }
}
