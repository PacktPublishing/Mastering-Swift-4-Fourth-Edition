// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class MyClass {
    var name = ""
}


struct MyStruct {
    var name = ""
}


func showPass(myc: MyClass, mys: MyStruct) {
    var mys = mys  //Only way to change since var parameters nolonger exist
    print("Received Class: \(myc.name) Struct: \(mys.name)")
    myc.name = "Set in function - class"
    mys.name = "Set in function - struct"
    print("Set  Class: \(myc.name) Struct: \(mys.name)")
}

var mci = MyClass()
mci.name = "set in main - class"

var msi = MyStruct()
msi.name = "set in main - struct"

showPass(myc: mci, mys: msi)
print("Main  Class: \(mci.name) Struct: \(msi.name)")

