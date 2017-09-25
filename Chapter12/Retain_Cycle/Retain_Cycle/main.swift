//
//  main.swift
//  Retain_Cycle
//
//  Created by Jon Hoffman on 7/9/17.
//  Copyright © 2017 Jon Hoffman. All rights reserved.
//

import Foundation

print("Hello, World!")

var testClassOne: TestClassOne? = TestClassOne()
var testClassTwo: TestClassTwo? = TestClassTwo()

    testClassTwo?.closureExample(testClassOne!.myClosure)

    testClassOne = nil
    print("testClassOne is gone")

    testClassTwo = nil
    print("testClassTwo is gone")
