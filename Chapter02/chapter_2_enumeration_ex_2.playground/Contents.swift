// Playground - noun: a place where people can play

import UIKit

enum Planets: Int  {
    case Mercury = 1
    case Venus
    case Earth
    case Mars
    case Jupiter
    case Saturn
    case Uranus
    case Neptune
}
print("Earth is planet number " + String(Planets.Earth.rawValue))

enum Product {
    case Book(Double, Int, Int)
    case Puzzle(Double, Int)
}

var masterSwift = Product.Book(49.99, 2016, 310)
var worldPuzzle = Product.Puzzle(9.99, 200)

switch masterSwift {
    case .Book(let price, let year, let pages):
        print("Master Swift was published in \(year) for the price of \(price) and has \(pages) pages")
    case .Puzzle(let price, let pieces):
        print("Master Swift is a puzze with \(pieces) and sells for \(price)")
}

switch worldPuzzle {
    case .Book(let price, let year, let pages):
        print("World Puzzle was published in \(year) for the price of \(price) and has \(pages) pages")
    case .Puzzle(let price, let pieces):
        print("World Puzzle is a puzze with \(pieces) and sells for \(price)")
}

