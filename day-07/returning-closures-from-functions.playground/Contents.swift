import UIKit

// # Retornando closures de funções

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("London")

// não é recomendado mais podemos sim pegar o valor de retorno de travel() diretamente:

//let result2 = travel()("London")
