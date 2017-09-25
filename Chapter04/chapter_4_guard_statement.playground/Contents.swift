//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



func guardFunction1(str: String?) {
    guard let goodStr = str else {
        print("Input was nil")
        return
    }
    print("Input was \(goodStr)")
}

guardFunction1(str: "Hello")

func guardFunction2(str: String) {
    guard let num = Int(str) else {
        print("Input is not a number")
        return
    }
    
    print("Input is the number \(num)")
}

guardFunction2(str: "555")


func isValidIP(ipAddr: String?) -> Bool {

    guard let ipAddr = ipAddr else {
        return false
    }
    
    let octets = ipAddr.characters.split { $0 == "."}.map{String($0)}
    
    guard octets.count == 4 else {
        return false
    }
    
    func validOctet(octet: String) -> Bool {
        guard let num = Int(String(octet)),
            num >= 0 && num < 256 else {
                return false
        }
        return true
    }
    
    for octet in octets {
        guard validOctet(octet: octet) else {
            return false
        }
    }
    
    return true

}

print(isValidIP(ipAddr: "10.1.1.100"))
