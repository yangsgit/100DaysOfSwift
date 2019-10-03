import UIKit

var str = "Hello, playground"

var a = 1
//a = "1" X the type deponeds on first time initialization

var t = (1, "1", true)
t = (2, "2", false)
//t = ("2", "1", true) can't change value type
//t = (1, "1", true, 2, 3) can't add more value

"Taylor" <= "Swift" // false
"Swift" >= "Taylor" // false

let weather1 = "snow"

switch weather1 {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
    fallthrough
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

//Wrap up warm
//Wear sunscreen
//Enjoy your day!

let weather2 = "snow"

switch weather2 {
case "rain":
    print("Bring an umbrella")
case "snow":
    fallthrough
    print("Wrap up warm")  // skip this line
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}


let score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50...85:
    print("You did OK.")
default:
    print("You did great!")
}

10 / 3
10 % 3
//10 / 0 error
//10 % 0 error
3 % 10
3 / 10
var c = 5
var b = 3
c += b
c -= c
b += b
c + 1

let set: Set<Int> = [2,3,3]
let set0 = Set<Double>([2,3,3])
var set1 = Set<Int>() // can modify it
set1.insert(1)
let set2 = Set<Int>() // can not modify it

