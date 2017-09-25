//
//  ViewController.swift
//  GCDTest
//
//  Created by Jon Hoffman on 2/16/15.
//  Copyright (c) 2015 Jon Hoffman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    //    let cQueueExample = ConcurrentQueues()
    //    cQueueExample.example()
        
    //    let sQueueExample = SerialQueues()
    //    sQueueExample.example()
        
   /*     let dPatchOnce = DispatchOnce()
        for _ in 0..<4 {
            dPatchOnce.example()
        }
    */
        let dPatchAfter = DispatchAfter()
        dPatchAfter.example()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

