//
//  ViewController.swift
//  OperationQueueTest
//
//  Created by Jon Hoffman on 2/28/15.
//  Copyright (c) 2015 Jon Hoffman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let blockOperation = BlockOperationTest()
        blockOperation.example()
        
     //   let operationWithBlock = OperationWithBlockTest()
     //   operationWithBlock.example()
        
     //   let myOperationTest = MyOperationTest()
     //   myOperationTest.example()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

