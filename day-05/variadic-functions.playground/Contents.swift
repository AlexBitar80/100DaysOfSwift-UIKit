import UIKit

// # Funções Variádicas

func square(numbers: Int...) { // ... criar uma cadeia de items do mesmo tipo
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 1, 2, 3, 4, 5)
