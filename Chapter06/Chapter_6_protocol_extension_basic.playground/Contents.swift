//: Playground - noun: a place where people can play

import UIKit

protocol DogProtocol {
    var name: String {get set}
    var color: String {get set}
}

extension DogProtocol {
    func speak() -> String {
        return "Woof Woof"
    }
}

struct JackRussel: DogProtocol {
    var name: String
    var color: String
}
class WhiteLab: DogProtocol {
    var name: String
    var color: String
    
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
}

struct Mutt: DogProtocol {
    var name: String
    var color: String
    func speak() -> String {
        return "I am hungry"
    }
}

var dash = JackRussel(name: "Dash", color: "Brown and White")
var lily = WhiteLab(name: "Lily", color: "White")
var buddy = Mutt(name: "Buddy", color: "Brown")
dash.speak()
lily.speak()
buddy.speak()



protocol PersonProtocol {
    var firstName: String {get set}
    var lastName: String {get set}
    var profession: String {get}
    var birthDate: Date {get set}
    
    init (firstName: String, lastName: String, birthDate: Date)

}


