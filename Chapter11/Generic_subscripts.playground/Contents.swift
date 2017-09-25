//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

struct GenericSubscript {
    let dictionary: [String: Any] = [:]
    
    subscript<T: Hashable>(item: T) -> Int {
        return item.hashValue
    }
    
    subscript<T>(key: String) -> T? {
        return dictionary[key] as? T
    }
 
}

var g = GenericSubscript()
var x = g["test"]


