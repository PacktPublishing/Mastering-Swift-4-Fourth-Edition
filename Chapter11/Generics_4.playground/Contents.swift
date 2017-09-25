// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol WidgetProtocol {
    var name: String {get set}
    var description: String {get set}
}

class MyClass<T: WidgetProtocol> {
    var myProp: T?
    func myFunc(myVar: T) {
        
    }
}

class MyClass2 {
    var myProp: WidgetProtocol?
    func myFunc(myVar: WidgetProtocol) {
        
    }
}

