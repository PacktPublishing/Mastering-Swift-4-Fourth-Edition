// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol QueueProtocol {
    associatedtype QueueType: Hashable
    mutating func add(item: QueueType)
    mutating func getItem() -> QueueType?
    func count() -> Int
}

class IntQueue: QueueProtocol {
    var items = [Int]()
    
    func add(item: Int) {
        items.append(item)
    }
    
    func getItem() -> Int? {
        if items.count > 0 {
            return items.remove(at: 0)
        } else {
            return nil
        }
    }
    
    func count() -> Int {
        return items.count
    }
}



var intQ = IntQueue()
intQ.add(item:2)
intQ.add(item: 4)
print(intQ.getItem()!)
intQ.add(item: 6)


class GenericQueue<T: Hashable>: QueueProtocol {
    var items = [T]()
    
    func add(item: T) {
        items.append(item)
    }
    
    func getItem() -> T? {
        if items.count > 0 {
            return items.remove(at: 0)
        } else {
            return nil
        }
    }
    
    subscript(i:Int) -> T? {
        get {
            if items.count > i {
                return items[i]
            } else {
                return nil
            }
        }
    }
    
    func count() -> Int {
        return items.count
    }
}


var intQ2 = GenericQueue<Int>()
intQ2.add(item: 2)
intQ2.add(item: 4)
print(intQ2.getItem()!)
intQ2.add(item: 6)
print(intQ2[1]!)
