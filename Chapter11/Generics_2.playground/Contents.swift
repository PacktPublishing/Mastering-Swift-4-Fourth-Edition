// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class List<T> {
    var items = [T]()
    
    func add(item: T) {
        items.append(item)
    }
    
    func getItem(index: Int) -> T? {
        if items.count > index {
            return items[index]
        } else {
            return nil
        }
    }
    
}
var list = List<String>()
list.add(item: "Hello")
list.add(item: "World")
print(list.getItem(index: 1)!)



struct GenericStruct<T: Comparable> {
    
}

enum GenericEnum<T> {
    
}
