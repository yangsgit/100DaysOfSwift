import UIKit

struct User {
    var username: String
    init(){
        username = "Anonymous"
        print("Creating a new user!")
    }
}

//var user = User(username: "twostraws")
var user = User()
user.username = "twostraws"

struct Person {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

var ed = Person(name: "Ed")
ed.familyTree

struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

print(Student.classSize)


struct SecurePerson {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}
