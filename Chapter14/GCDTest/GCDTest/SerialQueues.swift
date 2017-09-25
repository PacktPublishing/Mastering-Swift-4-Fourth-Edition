//
//  SerialQueues.swift
//  GCDTest
//
//  Created by Jon Hoffman on 2/28/15.
//  Copyright (c) 2015 Jon Hoffman. All rights reserved.
//

import UIKit

class SerialQueues: NSObject {
   
    
    func example() {
        
        let calculation = DoCalculations()
        
        let squeue = DispatchQueue(label: "squeue.hoffman.jon")
        
        let s = {calculation.performCalculation(100000, tag: "sync1")}
        squeue.async (execute: s)
        
        squeue.async {
            calculation.performCalculation(1000, tag: "sync2")
        }
        squeue.async {
            calculation.performCalculation(100000, tag: "sync3")
        }

    }
}
