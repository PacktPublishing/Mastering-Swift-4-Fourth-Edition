//: Playground - noun: a place where people can play

import Cocoa

var name = "Jon"
var language = "Swift"

var message2 = "\(name) Welcome to the wonderful world of \(language)!"
var message1 = " Welcome to the wonderful world of "

print(name, message1, language, "!")
print(name, message1, language, "!", separator:"")
print(message2)

var name1 = "Jon"
var name2 = "Kim"
var name3 = "Kailey"
var name4 = "Kara"

var line = ""

print(name1, name2, name3, name4, separator:", ", terminator:"", to:&line)
print(line)

