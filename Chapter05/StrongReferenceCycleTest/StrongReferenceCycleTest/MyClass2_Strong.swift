//
//  MyClass2.swift
//  StrongReferenceCycleProject
//
//  Created by Jon Hoffman on 12/22/14.
//  Copyright (c) 2014 Jon Hoffman. All rights reserved.
//

import Foundation

class MyClass2_Strong {
    var name = ""
    var class1: MyClass1_Strong?
    init(name: String) {
        self.name = name
        print("Initializing class2_Strong with name \(self.name)")
    }
    deinit {
        print("Releasing class2_Strong with name \(self.name)")
    }

}
