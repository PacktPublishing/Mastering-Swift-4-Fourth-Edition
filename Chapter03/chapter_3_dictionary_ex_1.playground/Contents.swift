// Playground - noun: a place where people can play

import UIKit

var countries = ["US":"United States","IN":"India","UK":"United Kingdom"];
var name = countries["US"]
var cnt = countries.count  //cnt contains 3
var empty = countries.isEmpty //empty contains false

countries["UK"] = "Great Britain"
var orig = countries.updateValue("Britain", forKey: "UK")


print(countries["UK"])

countries["FR"] = "France" //The value of “FR” is set to “France”

var orig1 = countries.updateValue("Germany", forKey: "DE")
//The value of “DE” is set to “Germany” and orig1 is nil

countries["IN"] = nil //The “IN” key/value pair is removed

var orig2 = countries.removeValue(forKey: "UK")
//The “UK” key value pair is removed and orig2 contains “United Kingdom”

countries.removeAll() //Removes all key/value pairs from the countries dictionary
