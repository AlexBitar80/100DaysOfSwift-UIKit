import UIKit

let happy = {
    print("I am happy!")
}

func goodDay(action: () -> Void) { // espera receber uma função vazia
    print("Today is a good day")
    action()
    print("Today is a good day")
}

goodDay(action: happy) // recebe a closure como parâmetro
