//
//  MyOperationTest.swift
//  OperationQueueTest
//
//  Created by Jon Hoffman on 2/28/15.
//  Copyright (c) 2015 Jon Hoffman. All rights reserved.
//

import UIKit

class MyOperationTest: Operation {
    func example() {
        
        let operationQueue = OperationQueue()
     //   operationQueue.maxConcurrentOperationCount = 1
        operationQueue.addOperation(MyOperation(iterations: 10000000, tag: "Operation 1"))
        operationQueue.addOperation(MyOperation(iterations: 10000, tag: "Operation 2"))
        operationQueue.addOperation(MyOperation(iterations: 1000000, tag: "Operation 3"))
        
        print("Finished")
    }
}
