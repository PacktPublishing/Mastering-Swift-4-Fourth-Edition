// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var myString1: String?
var myString2: Optional<String>
var myString3: String?


myString1 = "test"
if myString1 != nil {
    var test:String = myString1!
}


myString3 = "Space"
if var tempVar = myString3 {
    print(tempVar)
} else {
    print("No value")
}


func getName(index: Int) -> String? {
    var names = ["Jon", "Kim", "Kailey", "Kara"]
    if index >= names.count {
        return nil
    } else {
        return names[index]
    }
}

var name = getName(index: 2)
var name2 = getName(index: 5)

func optionalParam(myString: String?) {
    if let _ = myString {
        print("Contains value")
    } else {
        print("Does not contains value")
    }
}

optionalParam(myString: nil)

var tuple1: (one: String, two:Int)?
var tuple2: (one:String, two:Int?)
tuple2 = ("Test", nil)
