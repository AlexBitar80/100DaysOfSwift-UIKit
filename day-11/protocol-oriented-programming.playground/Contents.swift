import UIKit

protocol Identifiable {
    var id: String { get set }
    func identify()
}

extension Identifiable { // Adicionando valores padrão para os métodos do protocolo
    func identify() {
        print("My ID is \(id).")
    }
}

struct User: Identifiable {
    var id: String
}

let alexandre = User(id: "@alexandrebitar_")
alexandre.identify()
