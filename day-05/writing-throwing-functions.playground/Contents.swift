import UIKit

enum PasswordError: Error {
    case obvious
}

// refica se a senha é óbvia
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

// # Executando funções de arremesso

do { // tentativa
    try checkPassword("password")
    print("That password is good!")
} catch { // irá pegar a falha
    print("You can't use that password.")
}
