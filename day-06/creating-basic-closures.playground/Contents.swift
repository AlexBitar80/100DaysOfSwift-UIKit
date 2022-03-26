import UIKit

let sayHello = {
    print("Hello World!")
}

sayHello()

// # Aceitando parâmetros em uma closure

let happyBirthday = { (name: String) in
    print("Happy Birthday, \(name)")
}

happyBirthday("Alexandre") // closures não recebem rótulos na execução da função
