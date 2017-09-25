//
//  ConcurrentQueues.swift
//  GCDTest
//
//  Created by Jon Hoffman on 2/28/15.
//  Copyright (c) 2015 Jon Hoffman. All rights reserved.
//

import UIKit

class ConcurrentQueues: NSObject {
    func example() {
        let calculation = DoCalculations()

        let cqueue = DispatchQueue(label: "cqueue.hoffman.jon", attributes: .concurrent)

        let c = {calculation.performCalculation(10000000, tag: "async1")}
        cqueue.async(execute: c)
        
        cqueue.async {
        calculation.performCalculation(1000, tag: "async2")
        }
        cqueue.async {
        calculation.performCalculation(100000, tag: "async3")
        }

    }
}
