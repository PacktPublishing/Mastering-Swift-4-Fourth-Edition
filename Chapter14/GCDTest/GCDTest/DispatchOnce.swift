//
//  DispatchOnce.swift
//  GCDTest
//
//  Created by Jon Hoffman on 2/28/15.
//  Copyright (c) 2015 Jon Hoffman. All rights reserved.
//

import UIKit

class DispatchOnce: NSObject {
    private lazy var _once: () = {
            print("Printed only on the first call")
        }()
    var token: Int = 0
    func example() {
        _ = self._once
        print("Printed for each call")
    }
   
}
