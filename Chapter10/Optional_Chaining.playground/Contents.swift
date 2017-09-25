// Playground - noun: a place where people can play

import UIKit

class Collar {
    var color: String
    init(color: String) {
        self.color = color
    }
}

class Pet {
    var name: String
    var collar: Collar?
    init(name: String) {
        self.name = name
    }
}

class Person {
    var name: String
    var pet: Pet?
    init(name: String) {
        self.name = name
    }
}

var jon = Person(name: "Jon")
var buddy = Pet(name: "Buddy")
jon.pet = buddy
var collar = Collar(color: "Red")
buddy.collar = collar

if let tmpPet = jon.pet {
    if let tmpCollar = tmpPet.collar {
        print("The color of the collar is \(tmpCollar.color)")
    } else {
        print("Can not retrieve color")
    }
} else {
    print("Can not retrieve color")
}

if let color = jon.pet?.collar?.color {
    print("The color of the collar is \(color)")
} else {
    print("Can not retrieve color")
}




