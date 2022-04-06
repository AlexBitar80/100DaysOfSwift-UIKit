import UIKit

struct TaylorFan {
    // não pode ser acessado como propriedade direta
    static var favoriteSong = "Look What You Made Me Do"

    var name: String
    var age: Int
}

let fan = TaylorFan(name: "Alexandre", age: 34)
print(TaylorFan.favoriteSong)
