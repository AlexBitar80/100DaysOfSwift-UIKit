import UIKit

// # Opcionais

func sayHello(name: String) -> String? {
    if name == "Alexandre" {
        return nil
    } else {
        return "Hello \(name)"
    }
}

sayHello(name: "Alexandre") // nil

//MARK: - - -

func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

func takeHaterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}

// verifica se o valor dentro da função é válido e não opcioanl antes de retornar

if let haterStatus = getHaterStatus(weather: "rainy") {
    takeHaterAction(status: haterStatus)
}

func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }

    return nil
}

var year = yearAlbumReleased(name: "Red")

if year == nil {
    print("There was an error")
} else {
    print("It was released in \(year!)") // o ! diz que temos certeza que o ano nunca retornar em nil
}

//MARK: - Encadeamento opcional

func albumReleased(year: Int) -> String? {
    switch year {
        case 2006:
            return "Taylor Swift"
        case 2008:
            return "Fearless"
        case 2010:
            return "Speak Now"
        case 2012:
            return "Red"
        case 2014:
            return "1989"
        default:
            return nil
    }
}

//MARK: - O operador de coalescência nulo

// verifica se o valor de retorno é uma string e o torna maiúscula, caso contrario não faz nada
let album = albumReleased(year: 2006)?.uppercased()
print("The album is \(album ?? "album does not exist")")
