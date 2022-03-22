import UIKit


enum Result {
    case success
    case failure
}

// acessando valor fixo dentro do caso

// # Enum associated values
let result20 = Result.failure

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

print(talking)

// # Enum raw values

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2) // acessando pelo número da posição

print(earth!) // Venus
