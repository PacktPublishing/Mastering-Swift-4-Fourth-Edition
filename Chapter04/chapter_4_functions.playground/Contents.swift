// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func sayHello(name: String) {
    print("Hello \(name)")
}

func sayHello2(name: String) ->String {
    let retString = "Hello " + name
    return retString
}

func test(name: String, greeting: String) ->Void {
    print("\(greeting) \(name)")
}

func sayHello3(name: String, greeting: String = "Bonjour") {
    print("\(greeting) \(name)")
}

func sayHello4(name: String, name2: String = "Kim", greeting: String = "Bonjour") {
    print("\(greeting) \(name) and \(name2)")
}


sayHello(name: "Jon")

var message = sayHello2(name: "Jon")
_ = sayHello2(name:"Jon")


test(name: "Jon", greeting: "Hello")

sayHello3(name: "Jon")
sayHello3(name: "Jon", greeting: "Hello")

sayHello4(name: "Jon", greeting:"Hello")

