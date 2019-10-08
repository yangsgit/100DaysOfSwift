import UIKit

var str = "Hello, playground"

let driving = {
    print("I'm driving in my car")
}

driving()


let drive = { (place: String) in
    print("I'm going to \(place) in my car")
}

drive("London")


let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

func travel(action: () -> Void) {
    print("I'm going ready to go")
    action()
    print("I arrived!")
}

// we can pass the closure existed
travel(action: driving)

//or implement closure's body
travel() {
    print("I'm driving in my car")
}
// eliminate the parentheses
travel {
    print("create a new car")
}


func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//shorthand parameter name

travel { place in
    return "\(place) is where I want to go in my car"
}


travel {
    "I'm going to buy a car in \($0)"
}


func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel {
    "I'm going to \($0) at \($1) miles per hour."
}


func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("London")

let result2 = travel()("London")


func traveling() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result1 = traveling()
result1("London")

func traveled() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result3 = traveled()

result3("London")
result3("London")
result3("London")