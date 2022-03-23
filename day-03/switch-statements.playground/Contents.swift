import UIKit

let weather = "sunny"

switch weather {
    case "rain":
        print("Bring an umbrella")
    case "snow":
        print("Wrap up warm")
    case "sunny":
        print("Wear sunscreen")
        fallthrough // executa o código para o próximo caso
    default:
        print("Enjoy your day!")
}

let batteryPercentage = 100

// pega intervalos entre os números
switch batteryPercentage {
    case 100...90:
        print("Carga completa")
    case 89...60:
        print("Carga normal")
    case 59...38:
        print("A bateria está começando a descarregar")
    case 37...15:
        print("Coloque o celular no carregador!")
    case 14...1:
        print("Carga da bateria extremamente fraca")
    default:
        print("Bateria em 100%")
}
