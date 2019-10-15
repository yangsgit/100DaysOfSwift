import UIKit


protocol Identifiable {
    var id: String { set get }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}
let user: Identifiable = User(id: "sdf")
displayID(thing: user)


protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }


extension Int {
    func squared() -> Int {
        return self * self
    }
}

let num = 9
num.squared()
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}
num.isEven

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

print(type(of: beatles))


extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}



beatles.summarize()


extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}

let twostraws = User(id: "twostraws")
twostraws.identify()
