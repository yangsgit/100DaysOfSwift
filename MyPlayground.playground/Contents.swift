import UIKit

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}

outLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outLoop
        }
    }
}

let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

let set: Set<Int> = [1,2,3,4]
for num in set {
    print(num)
}

print("Players gonna ")

for _ in 1...5 {
    print("play")
}

var number = 1

while number <= 20 {
    print(number)
    number += 3
}

number = 1
repeat {
    print(number)
    number += 1
} while number <= 20

while false {
    print("This is false")
}

repeat {
    print("This is false")
} while false


var countDown = 10

while countDown >= 0 {
    print(countDown)
    countDown -= 1
}

print("Blast off! \(countDown)")

countDown = 10
while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}

for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        if product == 10 {
            break     // only break current loop
        }
        print ("\(i) * \(j) is \(product)")
    }
}






