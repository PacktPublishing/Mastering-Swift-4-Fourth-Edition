// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func winPercentage(BaseballTeam team: String, withWins wins: Int, andLoses loses: Int) -> Double {
    return Double(wins) / Double(wins + loses)
}

var per = winPercentage(BaseballTeam: "Red Sox", withWins: 99, andLoses: 63)
print(per)


