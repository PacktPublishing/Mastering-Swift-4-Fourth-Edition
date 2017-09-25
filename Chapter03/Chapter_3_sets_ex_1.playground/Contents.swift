//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Initializes an empty Set of the String type
var mySet1 = Set<String>()

//Initializes a mutable set of the String type with initial values
var mySet2 = Set(["one", "two", "three"])

//Creates aimmutable set of the String type.
let mySet3 = Set(["one", "two", "three"])

var mySet = Set<String>()
mySet.insert("One")
mySet.insert("Two")
mySet.insert("Three")
mySet.insert("Two")

print("\(mySet.count) items")
var contain = mySet.contains("Two")

for item in mySet {
    print(item)
}
var item = mySet.remove("Two")

//The removeAll method will remove all items from a set
mySet.removeAll()


