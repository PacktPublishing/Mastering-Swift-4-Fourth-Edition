//
//  TestClassOne.swift
//  Retain_Cycle
//
//  Created by Jon Hoffman on 7/9/17.
//  Copyright © 2017 Jon Hoffman. All rights reserved.
//

import Foundation

class TestClassOne {
    typealias nameClosure = (() -> String)
    
    var name = "Jon"
    
    lazy var myClosure: nameClosure =  {
        [unowned self] in
        return self.name
    }
    
    deinit {
        print("TestClassOne deinitialized")
    }
}
