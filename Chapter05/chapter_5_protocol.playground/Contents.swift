// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol FullName {
    var firstName: String {get set}
    var lastName: String {get set}
    
    func getFullName() -> String
}


class Scientist: FullName {
    var firstName = ""
    var lastName = ""
    var field = ""
    
    func getFullName() -> String {
        return "\(firstName) \(lastName) studies \(field)"
    }
}

struct FootballPlayer: FullName {
    var firstName = ""
    var lastName = ""
    var number = 0
    
    func getFullName() -> String {
        return "\(firstName) \(lastName) has the number \(number)"
    }
}

var scientist = Scientist()
scientist.firstName = "Kara"
scientist.lastName = "Hoffman"
scientist.field = "Physics"

var player = FootballPlayer();
player.firstName = "Dan"
player.lastName = "Marino"
player.number = 13

var person: FullName
person = scientist;
print(person.getFullName())
person = player
print(person.getFullName())




