//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol PersonProtocol {
    var firstName: String {get set}
    var lastName: String {get set}
    var profession: String {get}
    
    init (firstName: String, lastName: String)

}


class FootballPlayer: PersonProtocol {
    var firstName: String
    var lastName: String
    let profession = "Football Player"
    var position = "Unassigned"
    
    required init (firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
 }

struct SwiftProgrammer: PersonProtocol {
    var firstName: String
    var lastName: String
    let profession = "Swift Programmer"
    var ability = "Novice"
    
    init (firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    

}

var programmer = SwiftProgrammer(firstName: "Jon", lastName: "Hoffman")
programmer.ability = "Expert"


var player = FootballPlayer(firstName: "Dan", lastName: "Marino")
player.position = "Quarterback"


var people: [PersonProtocol] = []
people.append(programmer)
people.append(player)
print(people.count)


var p = people[0] as? SwiftProgrammer

for person in people {

    switch (person) {
    case is SwiftProgrammer:
        _ = person as! SwiftProgrammer
    case is FootballPlayer:
        _ = person as! FootballPlayer
    default:
        break
        
    }
    print("\(person.firstName) \(person.lastName): \(person.profession)")
}

var myPerson: PersonProtocol

myPerson = SwiftProgrammer(firstName: "Jon", lastName: "Hoffman")
print("\(myPerson.firstName) \(myPerson.lastName)")

myPerson = FootballPlayer(firstName: "Dan", lastName: "Marino")
print("\(myPerson.firstName) \(myPerson.lastName)")


for person in people where person is SwiftProgrammer {
    print(person.firstName)
}






