//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


enum PlayerNumberError: Error {
    case NumberTooHigh(description: String)
    case NumberTooLow(description: String)
    case NumberAlreadyAssigned
    case NumberDoesNotExist
}

typealias BaseballPlayer = (firstName: String, lastName: String, number: Int)

struct BaseballTeam {
    private var players = [Int: BaseballPlayer]()
    private let maxNumber = 99
    private let minNumber = 0
    
    mutating func addPlayer(player: BaseballPlayer) throws {
        guard player.number < maxNumber else {
            throw PlayerNumberError.NumberTooHigh(description: "Max number is \(maxNumber)")
        }
        guard player.number > minNumber else {
            throw PlayerNumberError.NumberTooLow(description: "Min number is \(minNumber)")
        }
        guard players[player.number] == nil else {
            throw PlayerNumberError.NumberAlreadyAssigned
        }
        players[player.number] = player
    }
    
    func getPlayerByNumber(number: Int) throws -> BaseballPlayer {
        if let player = players[number] {
            return player
        } else {
            throw PlayerNumberError.NumberDoesNotExist
        }
    }
}

func myFunc() throws {
    try myTeam.addPlayer(player: ("David", "Ortiz", 34))
}


var myTeam = BaseballTeam()

do {
    try myTeam.addPlayer(player:("David", "Ortiz", 34))
} catch PlayerNumberError.NumberTooHigh(let description) {
    print("Error: \(description)")
} catch PlayerNumberError.NumberTooLow(let description) {
    print("Error: \(description)")
} catch PlayerNumberError.NumberAlreadyAssigned {
    print("Error: Number already assigned")
}



do {
    let player = try myTeam.getPlayerByNumber(number: 34)
    print("Player is \(player.firstName) \(player.lastName)")
} catch let error {
    print("Error:  \(error)")
}

if let player = try? myTeam.getPlayerByNumber(number: 3) {
    print(player.firstName )
}

if let _ = try? myTeam.addPlayer(player:("X", "Man", 1)) {}

do {
    try myTeam.addPlayer(player:("Derek", "Jeter", 2))
} catch PlayerNumberError.NumberTooHigh(let description) {
    print("Error: \(description)")
} catch PlayerNumberError.NumberTooLow(let description) {
    print("Error: \(description)")
} catch PlayerNumberError.NumberAlreadyAssigned {
    print("Error: Number already assigned")
}
