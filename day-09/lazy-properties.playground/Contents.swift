import UIKit

//MARK: - Lazy properties

struct FamilyTree {
    init() {
        print("Criando árvore genealógica")
    }
}

struct Person {
    var name: String
    lazy var familyTree = FamilyTree() // só será criado em mémoria no momento que for chamada pelo menos uma vez
    
    init(name: String) {
        self.name = name
        print("\(name)")
    }
}

var alexandre = Person(name: "Alexandre")
alexandre.familyTree

//MARK: - Static properties and methods

struct Student {
    static var classSize = 0 // compartilha a variável para todas as instâncias
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

var gabriel = Student(name: "Gabriel")
var pedro = Student(name: "Pedro")
print(Student.classSize)
