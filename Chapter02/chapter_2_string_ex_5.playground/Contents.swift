// Playground - noun: a place where people can play

import UIKit

var stringOne = "one,two,three,four"
print(stringOne.replacingOccurrences(of: "to", with: "two"))


var path = "/one/two/three/four"

//Create start and end indexes
let startIndex = path.index(path.startIndex, offsetBy: 4)
let endIndex = path.index(path.startIndex, offsetBy: 14)

let sPath = path[startIndex..<endIndex]   //returns the String /two/three

//convert the substring to a string
let newStr = String(sPath)

path.substring(to:startIndex)  //returns the String /one
path.substring(from:endIndex)  //returns the String /four

path.last
path.first

//get the length of the string
var length = path.count



