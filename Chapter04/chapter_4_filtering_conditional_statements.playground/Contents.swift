//: Playground - noun: a place where people can play

import UIKit

for number in 1...30 where number % 2 == 0 {
    print(number)
}

var worldSeriesWinners = [
    ("Red Sox", 2004),
    ("White Sox", 2005),
    ("Cardinals", 2006),
    ("Red Sox", 2007),
    ("Phillies", 2008),
    ("Yankees", 2009),
    ("Giants", 2010),
    ("Cardinals", 2011),
    ("Giants", 2012),
    ("Red Sox", 2013),
    ("Giants", 2014)
]

for case let ("Red Sox", year) in worldSeriesWinners {
    print(year)
}

let myNumbers: [Int?] = [1, 2, nil, 4, 5, nil, 6]

//Changed from Some to some
for case let .some(num) in myNumbers {
    print(num)
}


for case let num? in myNumbers where num > 3 {
    print(num)
}


enum Identifier {
    case Name(String)
    case Number(Int)
    case NoIdentifier
}

var playerIdentifier = Identifier.Number(2)

if case let .Number(num) = playerIdentifier, num == 2 {
    print("Player is either Xander Bogarts or Derek Jeter")
} else if case let .Number(num) = playerIdentifier {
        print("Player's number is \(num)")
}

