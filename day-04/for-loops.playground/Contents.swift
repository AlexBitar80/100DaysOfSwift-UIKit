import UIKit

let students = [
    "Alexandre",
    "Lucas",
    "Gustavo",
    "Pedro",
    "José"
]

// faz um loop para cada item dentro do array e coloca esse item dentro de uma constante
for student in students {
    print(student)
}

print("Executando!")

// omitir a contante permite realizar um loop dentro de um intervalo
for _ in 1...10 {
    print("Loop executando!") // imprimi a linha 10 vezes
}
