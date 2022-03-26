import UIKit

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

// Em vez de passar seu encerramento como um parâmetro, você pode passar diretamente após a função dentro de chaves.

travel() {
    print("I'm driving in my car")
}

// como não existem outros parâmetros, podemos eliminar os parênteses completamente
travel {
    print("I'm driving in my car")
}
