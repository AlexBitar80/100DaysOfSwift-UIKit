import UIKit

// # Copiando objetos

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = Singer()
singerCopy.name = "Justin Bieber"
print(singerCopy.name)

// Sempre que fizermos uma copia de uma classe, alterar algo em uma refleti na outra

//struct Singer {
//    var name = "Taylor Swift"
//}
//
//var singer = Singer()
//print(singer.name) // Taylor Swift
//
//var singerCopy = Singer()
//singerCopy.name = "Justin Bieber"
//print(singerCopy.name) // Justin Bieber
