// Playground - noun: a place where people can play

import UIKit

struct MathTable {
    var num: Int
    
    subscript(multiply index: Int) -> Int {
        return num * index
    }
    
    subscript(addition index: Int) -> Int {
        return num + index
    }
    

    
}

var table = MathTable(num: 5)

print(table[multiply: 4])
print(table[addition: 4])



struct Hello {
    subscript (name: String) ->String {
        return "Hello \(name)"
    }
}

var hello = Hello()
print(hello["Jon"])










