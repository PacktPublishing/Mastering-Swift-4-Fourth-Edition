//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var mySet1 = Set(["One", "Two", "Three", "abc"])
var mySet2 = Set(["abc","def","ghi", "One"])

var newSetExclusiveOr = mySet1.symmetricDifference(mySet2)
mySet1.formSymmetricDifference(mySet2)
