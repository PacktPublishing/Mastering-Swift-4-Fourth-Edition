// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class MyNames {
    private var names:[String] = ["Jon", "Kim", "Kailey", "Kara"]
    
    var number: Int {
        get {
            return names.count
        }
    }
    
    subscript(add name: String) -> String{
        names.append(name)
        return name
    }
    
    subscript(index: Int) -> String {
        get {
            return names[index]
        }
        set {
            names[index] = newValue
        }
    }
}


var names = MyNames()
names[add: "Buddy"]
for i in 0..<names.number {
    print(names[i])
}

print(names[0])
names[0] = "Buddy"
print(names[0])
