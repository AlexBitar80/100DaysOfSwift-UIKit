import UIKit

var myNum = 10

func doubleInPlace(number: inout Int) { // valor pode ser alterado dentro da função e o valor vai refletir fora da função
    number *= 2
}

doubleInPlace(number: &myNum) // & é usado para especificar que estmaos usando inout
