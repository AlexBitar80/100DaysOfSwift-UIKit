import UIKit

// # Controle de acesso

struct Person {
    private var id: String // a variável só pode ser acessada dentro da struct
    
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "Seu número de segurança é \(id)"
    }
}

var person = Person(id: "2948884")
print(person.identify())
