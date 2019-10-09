import UIKit

var str = "Hello, playground"

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"

struct Game {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let game = Game(name: "basketball", isOlympicSport: true)
game.olympicStatus

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var p = Progress(task: "play", amount: 10) // init won't call didset
p.amount = 10 // only . call didset
p.amount = 12
struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}


let london = City(population: 9_000_000)
london.collectTaxes()


struct Person {
    var name: String

    mutating func makeAnonymous() {  // mutating only works when it is variable instead of constant
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()


let string = "Do or do not, there is no try."

print(string.count)
for c in string {
    print(c)
}


print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys = toys + ["Fizz", "Fibo"]
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)


struct User {
    var username: String
    var age: Int
    init(age: Int) {
        username = "Anonymous"
        self.age = age
        print("Creating a new user!")
    }
}

let user = User(age: 15)


struct Persons {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

struct FamilyTree {
    
    init(name: String) {
        print("Creating family tree!")
    }
}
struct Personal {
    var name: String
    lazy var familyTree = FamilyTree(name: name)

    init(name: String) {
        self.name = name
    }
}

var ed = Personal(name: "Ed")
ed.familyTree
