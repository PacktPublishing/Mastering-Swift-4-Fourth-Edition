// Playground - noun: a place where people can play

import UIKit

var speed = 300000000
switch speed {
    case 300000000:
        print("Speed of Light")
    case 340:
        print("Speed of soud")
    default:
        print("Unknown Speed")
}


var char : Character = "e"
switch char {
    case "a", "e", "i", "o", "u":
            print("letter is a vowel")
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m","n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            print("letter is a consonant")
    default:
            print("unknown letter")
}


var grade = 93
switch grade {
    case 90...100:
        print("Grade is an A")
    case 80...89:
        print("Grade is a B")
    case 70...79:
        print("Grade is an C")
    case 60...69:
        print("Grade is a D")
    case 0...59:
        print("Grade is a F")
    default:
        print("Unknown Grade")
}


var studentId = 4
var grade2 = 57
switch grade2 {
    case 90...100:
        print("Grade is an A")
    case 80...89:
        print("Grade is a B")
    case 70...79:
        print("Grade is an C")
    case 55...69 where studentId == 4:
        print("Grade is a D for student 4")
    case 60...69:
        print("Grade is a D")
    case 0...59:
        print("Grade is a F")
    default:
       print("Unknown Grade")
}



studentId = 4
var grade3 = 57
switch grade3 {
    case 90...100:
        print("Grade is an A")
    case 80...89:
        print("Grade is a B")
    case 70...79:
        print("Grade is an C")
    case 60...69:
        print("Grade is a D")
    case 0...59:
        print("Grade is a F")
        //The follow case statement would never be reached because the
        //grades would always match one of the previous two
    case 55...69 where studentId == 4:
        print("Grade is a D for student 4")
    default:
        print("Unknown Grade")
}


enum Product {
    case Book(String, Double, Int)
    case Puzzle(String, Double)
}

var order = Product.Book("Mastering Swift 2", 49.99, 2015)

switch order {
case .Book(let name, let price, let year):
    print("You ordered the book \(name) for \(price)")
case .Puzzle(let name, let price):
    print("You ordered the Puzzle \(name) for \(price)")
}
