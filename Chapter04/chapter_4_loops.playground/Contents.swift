// Playground - noun: a place where people can play

import UIKit


var countries = ["USA","UK", "IN"]

var dic = ["USA": "United States", "UK": "United Kingdom", "IN":"India"]

var keys  = Array(dic.keys)


for index in 1...5 {
    print(index)
}

for item in countries {
    print(item)
}

for (abbr, name) in dic {
    print("\(abbr) --  \(name)")
}


var ran = 0
while ran < 7 {
    ran = Int(arc4random_uniform(10))
}

var ran2: Int
repeat {
    ran2 = Int(arc4random_uniform(10))
} while ran2 < 7
