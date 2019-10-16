import UIKit

var name: String
name = "Tim McGraw"

var age: Int
age = 25


//official Apple recommendation is always to use Double because it has the highest accuracy.
var latitude: Double
latitude = -36.166667

var longitude: Float
longitude = -86.783333


var longitue: Float
longitue = -86.783333
longitue = -186.783333
longitue = -1286.783333
longitue = -12386.783333
longitue = -123486.783333
longitue = -123458634534535345.783333
print(longitue)


var name1 = "Tim McGraw"
var name2 = "Romeo"
var both = name1 + " and " + name2

var stayOutTooLate = true
stayOutTooLate
!stayOutTooLate

name = "Tim McGraw"
name == "Tim McGraw"
name != "Tim McGraw"

name = "Tim McGraw"
age = 25
latitude = 36.166667

"Your name is \(name), your age is \(age), and your latitude is \(latitude)"


"You are \(age) years old. In another \(age) years you will be \(age * 2)."


var songs = ["Shake it Off", "You Belong with Me", "Back to December", 3] as [Any]
type(of: songs)

var songss: [String] = []
var songsss = [String]()


var song = ["Shake it Off", "You Belong with Me", "Love Story"]
var songs2 = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]
var boths = songs + songs2

boths += ["Everything has Changed"]

var person = [
                "first": "Taylor",
                "middle": "Alison",
                "last": "Swift",
                "month": "December",
                "website": "taylorswift.com"
            ]

person["middle"]
person["month"]

var action: String
 stayOutTooLate = true
var nothingInBrain = true

if stayOutTooLate && nothingInBrain {
    action = "cruise"
}

if !stayOutTooLate && !nothingInBrain {
    action = "cruise"
}

let liveAlbums = 2

switch liveAlbums {
case 0:
    print("You're just starting out")

case 1:
    print("You just released iTunes Live From SoHo")

case 2:
    print("You just released Speak Now World Tour")

default:
    print("Have you done something new?")
}

let studioAlbums = 5

switch studioAlbums {
case 0...1:
    print("You're just starting out")

case 2...3:
    print("You're a rising star")

case 4...5:
    print("You're world famous!")

default:
    print("Have you done something new?")
}


struct Person {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }

        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor = Person(clothes: "T-shirts")
taylor.clothes = "short skirts"


struct Person1 {
    var age: Int

    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var fan = Person1(age: 25)
print(fan.ageInDogYears)

struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"

    var name: String
    var age: Int
}



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

    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

for album in allAlbums {
    print(album.getPerformance())
}


for album in allAlbums {
    let studioAlbum = album as? StudioAlbum
}


for album in allAlbums as! [StudioAlbum] {
    print(album.studio)
}

for album in allAlbums as? [LiveAlbum] ?? [LiveAlbum]() {
    print(album.location)
}

let vw = UIView()

UIView.animate(withDuration: 0.5, animations: {
    vw.alpha = 0
})

UIView.animate(withDuration: 0.5) {
    vw.alpha = 0
}

protocol Employee {
    var name: String { get set }
    var jobTitle: String { get set }
    func doWork()
}

struct Executive: Employee {
    var name = "Steve Jobs"
    var jobTitle = "CEO"

    func doWork() {
        print("I'm strategizing!")
    }
}

struct Manager: Employee {
    var name = "Maurice Moss"
    var jobTitle = "Head of IT"

    func doWork() {
        print("I'm turning it off and on again.")
    }
}


let staff: [Employee] = [Executive(), Manager()]

for person in staff {
    person.doWork()
}

//extension protocol
protocol Employee1 {
    var name: String { get set }
    var jobTitle: String { get set }
    func doWork()
}

extension Employee1 {
    func doWork() {
        print("I'm busy!")
    }
}
