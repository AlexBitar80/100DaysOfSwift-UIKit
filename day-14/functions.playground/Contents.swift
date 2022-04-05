import UIKit

// # Funções

func sayHello() {
    print("Hello strange")
}

sayHello()

// # Nomes de parâmetros externos e internos

func countLetters1(string: String) {
    print("the name is \(string) and has \(string.count) letters ")
}

countLetters1(string: "João")

func countLetters2(myString string: String) {
    print("the name is \(string) and has \(string.count) letters ")
}

countLetters2(myString: "João")

func countLetters3(_ string: String) {
    print("the name is \(string) and has \(string.count) letters ")
}

countLetters3("João")

func names(name: String) -> Bool {
    if name == "Alexandre" { return true }
    if name == "Gabriel" { return true }
    if name == "Pedro" { return true }
    if name == "Julio" { return true }
    
    return false
}

names(name: "José")

if names(name: "Alexandre") {
    print("Este nome é familiar")
} else {
    print("Nunca ouvi falar deste nome")
}
