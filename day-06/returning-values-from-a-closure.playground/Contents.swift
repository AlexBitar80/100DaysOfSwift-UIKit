import UIKit

let sayHello = { (name: String) -> String in
    return "Hello, \(name)!"
}

let message = sayHello("Pedro")

print(message)
