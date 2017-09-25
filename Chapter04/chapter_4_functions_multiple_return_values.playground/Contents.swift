// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func getNames() -> [String] {
    let retArray = ["Jon", "Kim", "Kailey", "Kara"]
    return retArray
}

func getTeam() -> (team: String, wins: Int, percent: Double) {
    let retTuple = ("Red Sox", 99, 0.611)
    return retTuple
}


var names = getNames()

var t = getTeam()

print("\(t.team) had \(t.wins) wins")
