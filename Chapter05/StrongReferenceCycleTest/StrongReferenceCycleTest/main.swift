//
//  main.swift
//  StrongReferenceCycleTest
//
//  Created by Jon Hoffman on 6/30/17.
//  Copyright © 2017 Jon Hoffman. All rights reserved.
//

import Foundation

print("Hello, World!")

func testStrongRefCycle() {
    print("----------Strong-------------")
    var class1: MyClass1_Strong? = MyClass1_Strong(name: "Class1_Strong")
    var class2: MyClass2_Strong? = MyClass2_Strong(name: "Class2_Strong")
    
    class1?.class2 = class2
    class2?.class1 = class1
    
    print("Setting classes to nil")
    class2 = nil
    class1 = nil
}

func testUnwnedRefCycle() {
    print("----------Unowned-------------")
    let class2 = MyClass2_Unowned(name: "Class2_Unowned")
    let class1: MyClass1_Unowned? = MyClass1_Unowned(name: "class1_Unowned", class2: class2)
    
    class2.class1 = class1
    
    print("Classes going out of scope")
    
}

func testWeakRefCycle() {
    print("----------Weak-------------")
    let class1: MyClass1_Weak? = MyClass1_Weak(name: "Class1_Weak")
    let class2: MyClass2_Weak? = MyClass2_Weak(name: "Class2_Weak")
    
    class1?.class2 = class2
    class2?.class1 = class1
    
    print("Classes going out of scope")
    
}

testStrongRefCycle()
testUnwnedRefCycle()
testWeakRefCycle()

