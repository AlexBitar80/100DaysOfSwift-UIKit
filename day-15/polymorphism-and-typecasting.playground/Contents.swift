import UIKit

//MARK: - Polimorfismo e Tipagem

class Album {
    var name: String

    init(name: String) {
        self.name = name
    }

    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}

class StudioAlbum: Album {
    var studio: String

    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }

    // alterando métodos da classe pai
    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
}

class LiveAlbum: Album {
    var location: String

    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    
    // alterando métodos da classe pai
    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}

//var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
//var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
//var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")
//
//var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]
//
//for album in allAlbums {
//    print(album.getPerformance())
//}

//MARK: - Convertendo tipos com typecasting

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")

var allAlbums: [Album] = [taylorSwift, fearless]

for album in allAlbums {
    let studioAlbum = album as! StudioAlbum
    print(studioAlbum.studio)
}

for album in allAlbums as! [StudioAlbum] {
    print(album.studio)
}

for album in allAlbums as? [LiveAlbum] ?? [LiveAlbum]() {
    print(album.location)
}

//MARK: - Convertendo tipos comuns com inicializadores

//let number = 5
//let text = number as! String

let number = 5
let text = String(number)
print(text)
