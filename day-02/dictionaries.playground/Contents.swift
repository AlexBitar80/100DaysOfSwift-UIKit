import UIKit

let heights: [String: Double] = [
    "Shaquille O'Neal": 2.16,
    "Michael Jordan": 1.98,
    "LeBron James": 2.06
]

print(heights["Shaquille O'Neal"]!) // 2.16

// # Dictionary default values

let favoriteMovies: [String: String] = [
    "João": "Avengers",
    "Gabriel": "The Batman",
    "Pedro": "Spider Man No Way Home"
]

// valor padrão caso não encontrado
print(favoriteMovies["João", default: "Not Found"]) // not found

// # Creating empty collections

var numberPhone = [String: Int]()

numberPhone["João"] = 994787757467

print(numberPhone)

var values = [Int]()

// Sets usam outra sintaxe
var words = Set<String>()
var numbers = Set<Int>()

// Declaração para array e set podem ser da mesma forma
var scores = Dictionary<String, Int>()
var results = Array<Int>()
