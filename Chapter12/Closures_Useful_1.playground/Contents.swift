// Playground - noun: a place where people can play

import UIKit

var guests = ["Jon", "Kim", "Kailey", "Kara"]

guests.map {
    (name: String) -> Void in print("Hello \(name)")
}

guests.map {print("Hello \($0)")}

var messages = guests.map { name in
    print("Hello \(name)")
}

for message in messages {
    print(message)
}


var greetGuest = { (name:String) -> Void in
    print("Hello guest named \(name)")
}

var sayGoodbye = { (name:String) -> Void in
    print("Goodbye \(name)")
}


guests.map(greetGuest)
guests.map(sayGoodbye)
    



var greetGuest2 = { (name:String) -> Void in
    if (name.hasPrefix("K")) {
        print("\(name) is on the guest list")
    } else {
        print("\(name) was not invited")
    }
}

guests.map(greetGuest2)

func temperatures(calculate:(Int)->Void) {
        let numbers = [72,74,76,68,70,72,66]
        numbers.map(calculate)
}

func testFunction() {
    var total = 0
    var count = 0
    let addTemps = {
        (num: Int) -> Void in
        total += num
        count += 1
    }
    temperatures(calculate: addTemps)
    print("Total: \(total)")
    print("Count: \(count)")
    print("Average: \(total/count)")
}

testFunction()



