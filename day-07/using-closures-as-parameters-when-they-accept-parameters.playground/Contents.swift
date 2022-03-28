import UIKit

// # Usando closures como parâmetros quando eles aceitam parâmetros

func travel(action: (String) -> Void) { // Void não retorna valor algum
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in // Obrigatoriamente vai aceita uma String como parâmetro
    print("I'm going to \(place) in my car")
}

// # Usando closures como parâmetros quando eles retornam valores

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in //  Obrigatoriamente vai aceita uma String como parâmetro e retornar uma String
    return "I'm going to \(place) in my car"
}

// # Nomes de parâmetros abreviados

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// O parâmetro é uma String, por isso não é obrigatorio
travel { place -> String in
    return "I'm going to \(place) in my car"
}

// o encerramento é uma String por isso não é obrigatorio
travel { place in
    return "I'm going to \(place) in my car"
}

// a Closure possui apenas a linha de retorno "return" não é obrigatorio
travel { place in
    "I'm going to \(place) in my car"
}

// podemos remover o "in" e deixar a liguagem fornece nomes automáticos de parâmetros utilizando o $0, $1 e por ai vai....
travel {
    "I'm going to \($0) in my car"
}
