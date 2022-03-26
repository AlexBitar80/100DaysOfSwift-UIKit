import UIKit

// # Parâmetros padrão

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Alexandre")
greet("Alexandre", nicely: false)
