//
//  TestClassTwo.swift
//  Retain_Cycle
//
//  Created by Jon Hoffman on 7/9/17.
//  Copyright © 2017 Jon Hoffman. All rights reserved.
//

import Foundation

class TestClassTwo {
    
    func closureExample(_ handler: TestClassOne.nameClosure) {
        print(handler())
    }
    
    deinit {
        print("TestClassTwo deinitialized")
    }
}
