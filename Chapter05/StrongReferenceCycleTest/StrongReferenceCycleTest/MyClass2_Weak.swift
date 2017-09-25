//
//  MyClass6_Weak.swift
//  StrongReferenceCycleProject
//
//  Created by Jon Hoffman on 12/22/14.
//  Copyright (c) 2014 Jon Hoffman. All rights reserved.
//

import Foundation

class MyClass2_Weak {
    var name = ""
    weak var class1: MyClass1_Weak?
    init(name: String) {
        self.name = name
        print("Initializing class2_Weak with name \(self.name)")
    }
    deinit {
        print("Releasing class2_Weak with name \(self.name)")
    }
}
