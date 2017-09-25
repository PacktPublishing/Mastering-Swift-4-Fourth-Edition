//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var mySet1 = Set(["One", "Two", "Three", "abc"])
var mySet2 = Set(["abc","def","ghi", "One"])

mySet1.subtract(mySet2)
var newSetSubtract = mySet1.subtracting(mySet2)