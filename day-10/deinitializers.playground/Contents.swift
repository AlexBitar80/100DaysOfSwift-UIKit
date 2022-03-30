import UIKit

class Person {
    var name = "João Alexandre"
    
    init() {
        print("\(name) is alive!")
    }
    
    deinit { // é executado sempre que instância da classe for destruida
        print("\(name) is no more!")
    }
    
    func printGreeting() {
        print("Hello, i'am \(name)")
    }
}

for _ in 0...3 {
    let person = Person()
    person.printGreeting()
}
