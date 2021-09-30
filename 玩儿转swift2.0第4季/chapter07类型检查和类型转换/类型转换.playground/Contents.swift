import UIKit

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem, CustomStringConvertible {
    var genre: String
    var description: String {
        return "Movie name:\(self.name) genre:\(self.genre)"
    }
    
    init(name: String, genre: String) {
        self.genre = genre
        super.init(name: name)
    }
}

class Music: MediaItem {
    var artist: String
    init(name: String, artistName: String) {
        self.artist = artistName
        super.init(name: name)
    }
}

class Game: MediaItem {
    var developer: String
    init(name: String, developer: String) {
        self.developer = developer
        super.init(name: name)
    }
}

let library: [MediaItem] = [
    Movie(name: "Zootopia", genre: "Animation"),
    Music(name: "Hello", artistName: "Adele"),
    Game(name: "LIMBO", developer: "Playdead"),
    Music(name: "See you again", artistName: "Wiz Khalifa"),
    Game(name: "The Bridge", developer: "The Quantum Astrophysicists Guild")
]

let movie1 = library[0] as! Movie
print(movie1)

for mediaItem in library {
    if let movie = mediaItem as? Movie {
        print("Movie name:\(movie.name) genre:\(movie.genre)")
    } else if let music = mediaItem as? Music {
        print("Music name:\(music.name) artist:\(music.artist)")
    } else if let game = mediaItem as? Game {
        print("Game name:\(game.name) developer:\(game.developer)")
    }
}

