import UIKit

func sayHello() {
    let message = "Hello World"
    
    print(message)
}

sayHello()

// # Aceitando parâmetros

func divisibleNumber(number: Int) {
    if number % 2 == 0 {
        print("Seu número é divisel por 2")
    } else {
        print("Seu número não é divisível por 2")
    }
}

divisibleNumber(number: 10) // espera receber o número como parâmetro




