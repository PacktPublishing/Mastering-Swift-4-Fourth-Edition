//
//  main.swift
//  ArcTestProject
//
//  Created by Jon Hoffman on 6/30/17.
//  Copyright © 2017 Jon Hoffman. All rights reserved.
//

import Foundation

print("Hello, World!")

var class1ref1: MyClass? = MyClass(name: "One")
var class2ref1: MyClass? = MyClass(name: "Two")
var class2ref2: MyClass? = class2ref1

print("Setting class1ref1 to nil")
class1ref1 = nil

print("Setting class2ref1 to nil")
class2ref1 = nil

print("Setting class2ref2 to nil")
class2ref2 = nil
