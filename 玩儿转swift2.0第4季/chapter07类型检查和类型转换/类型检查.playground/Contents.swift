import UIKit

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var genre: String
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

var movieCount = 0
var musicCount = 0
var gameCount = 0

//library.forEach({mediaItem in
//    if mediaItem is Movie {
//        movieCount += 1
//    } else if mediaItem is Music {
//        musicCount += 1
//    } else if mediaItem is Game {
//        gameCount += 1
//    }
//})

for mediaItem in library {
    if mediaItem is Movie {
        movieCount += 1
    } else if mediaItem is Music {
        musicCount += 1
    } else if mediaItem is Game {
        gameCount += 1
    }
}

print("movieCount:\(movieCount), musicCount:\(musicCount), gameCount:\(gameCount)")
