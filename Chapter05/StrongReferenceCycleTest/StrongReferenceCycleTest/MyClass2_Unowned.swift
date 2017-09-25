//
//  MyClass4.swift
//  StrongReferenceCycleProject
//
//  Created by Jon Hoffman on 12/22/14.
//  Copyright (c) 2014 Jon Hoffman. All rights reserved.
//

import Foundation

class MyClass2_Unowned {
    var name = ""
    var class1: MyClass1_Unowned?
    init(name: String) {
        self.name = name
        print("Initializing class2_Unowned with name \(self.name)")
    }
    deinit {
        print("Releasing class2_Unowned with name \(self.name)")
    }
}
