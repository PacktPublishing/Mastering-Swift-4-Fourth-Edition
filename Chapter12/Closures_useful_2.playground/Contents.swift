// Playground - noun: a place where people can play

import UIKit

struct TestType {
    typealias getNumClosure = ((Int, Int) -> Int)
    
    var numOne = 5
    var numTwo = 8
    
    var results = 0;
    
    mutating func getNum(handler: getNumClosure) -> Int {
        results = handler(numOne,numTwo)
        print("Number to Use:  \(results)")
        return results
    }
}



var max: TestType.getNumClosure = {
    if $0 > $1 {
        return $0
    } else {
        return $1
    }
}

var min: TestType.getNumClosure = {
    if $0 < $1 {
        return $0
    } else {
        return $1
    }
}

var multiply:  TestType.getNumClosure = {
    return $0 * $1
}

var second: TestType.getNumClosure = {
    return $1
}

var answer: TestType.getNumClosure = {
    _ = $0 + $1
    return 42
}



var myClass = TestType()

myClass.getNum(handler: max)
myClass.getNum(handler: min)
myClass.getNum(handler: multiply)
myClass.getNum(handler: second)
myClass.getNum(handler: answer)



