// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

for i in 1...10 {
    if i%2 == 0 {
        continue
    }
    print("\(i) is odd")
}

for i in 1...10 {
    if i%2 == 0 {
        break
    }
    print("\(i) is odd")
}


var name = "Jon"
var sport = "Baseball"
switch sport {
case "Baseball":
    print("\(name) playes Baseball")
    fallthrough
case "Basketball":
    print("\(name) playes Basketball")
    fallthrough
default:
    print("Unknown sport")
}

