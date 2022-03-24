import UIKit

var number = 1

// faz um loop mas no seu caso a condição vem no final
repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")

while false { // nunca sera executado (Aviso do Xcode)
    print("This is false")
}

// a linha sera executada uma unica vez, pois a verificação vem no final
repeat {
    print("This is false")
} while false

// # Saindo de loops

var countDown = 10

while countDown >= 0 {
    print(countDown)

    // quando o loop chegar em 4 imprimira a mensagem ignorando todo o resto do loop
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}

// # Saindo de vários loops

for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop // tanto o loop interno quanto o externo são encerrados
        }
    }
}

// # Ignorando items

for i in 1...10 {
    if i % 2 == 1 {
        continue // quando passar por está linha o loop vai pular para o próximo
    }

    print(i)
}

// # Loops infinitos

var counter = 0

// executara até que tenha uma condição de sainda 
while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}
