//
//  DispatchAfter.swift
//  GCDTest
//
//  Created by Jon Hoffman on 2/28/15.
//  Copyright (c) 2015 Jon Hoffman. All rights reserved.
//

import UIKit

class DispatchAfter: NSObject {
    func example() {
        
        let calculation = DoCalculations()
        
        let queue2 = DispatchQueue(label: "squeue.hoffman.jon")
        
        let delayInSeconds = 2.0
        let pTime = DispatchTime.now() + Double(Int64(delayInSeconds * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        queue2.asyncAfter(deadline: pTime) {
            print("Times Up")
        }
        
        queue2.sync {
            calculation.performCalculation(100000, tag: "1-------dispatch after sync1")
        }


    }
}
