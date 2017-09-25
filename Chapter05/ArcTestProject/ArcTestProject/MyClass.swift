//
//  MyClass.swift
//  ArcTestProject
//
//  Created by Jon Hoffman on 6/30/17.
//  Copyright © 2017 Jon Hoffman. All rights reserved.
//

import Foundation

class MyClass {
    var name = ""
    init(name: String) {
        self.name = name
        print("Initializing class with name \(self.name)")
    }
    deinit {
        print("Releaseing class with name \(self.name)")
    }
}
