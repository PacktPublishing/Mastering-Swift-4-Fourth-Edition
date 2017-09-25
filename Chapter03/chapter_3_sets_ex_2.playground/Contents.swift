//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var mySet1 = Set(["One", "Two", "Three", "abc"])
var mySet2 = Set(["abc","def","ghi", "One"])

//var newSetUnion = mySet1.union(mySet2)
mySet1.formUnion(mySet2)
