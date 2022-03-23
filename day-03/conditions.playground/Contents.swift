import UIKit

// # Condicionais

let value1 = 32
let value2 = 24

// verificação de valores
if value1 + value2 == 56 {
    print("O valor bateu!")
} else {
    print("O valor não bateu")
}

if value1 % 5 == 0 {
    print("Seu valor é divisivel por 5")
} else {
    print("Seu valor não é divisivel por 5")
}

// # Combinação de condições

let name = "Alexandre"
let name2 = "Gabriel"
let age = 21
let age2 = 17

if name == "Alexandre" && name2 == "Gabriel" {
    print("Vocês podem entrar!")
} else {
    print("Vocês não estão convidados!")
}

if age > 18 || age2 > 18 {
    print("Podem entrar")
}

// # The ternary operator

let phone = "Iphone"
// refica os valores true e retorna uma coisa ou outra
print(phone == "Iphone" ? "Success" : "Failure")
