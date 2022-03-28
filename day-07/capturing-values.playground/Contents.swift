import UIKit

// # Capturando valores

//func travel() -> (String) -> Void {
//    return {
//        print("I'm going to \($0)")
//    }
//}
//
//let result = travel()
//result("London")

// retorna uma closure, e a closure aceita um parâmetro String e não retorna nada
func travel() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
    // os valoers de counter são capturados no encerramento
}

let result = travel()

result("London")
result("London")
result("London")
