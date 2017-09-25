//
//  MyClass5_Weak.swift
//  StrongReferenceCycleProject
//
//  Created by Jon Hoffman on 12/22/14.
//  Copyright (c) 2014 Jon Hoffman. All rights reserved.
//

import Foundation

class MyClass1_Weak {
    var name = ""
    var class2: MyClass2_Weak?
    init(name: String) {
        self.name = name
        print("Initializing class1_Weak with name \(self.name)")
    }
    deinit {
        print("Releasing class1_Weak with name \(self.name)")
    }
}
