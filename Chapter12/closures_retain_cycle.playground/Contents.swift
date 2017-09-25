// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class TestClass {
    typealias nameClosure = (() -> String)
    
    var name = "Jon"
    
    lazy var myClosure: nameClosure =  {
        return self.name
    }
    
    deinit {
        print("deinitialized")
    }
}




var testClass: TestClass? = TestClass()
//println(testClass!.myClosure())
testClass = nil

print("testClass is gone")



