//
//  ViewController.swift
//  iOSAppleRestSample
//
//  Created by Jon Hoffman on 7/20/17.
//  Copyright © 2017 Jon Hoffman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let printResultsClosure: HttpConnect.dataFromURLCompletionClosure = {
            
            if let data = $1, let sString = String(data: data, encoding: String.Encoding(rawValue: String.Encoding.utf8.rawValue)) {
                    print(sString)

            } else {
                print("Data is nil")
            }
        }
        let aConnect = HttpConnect()
    //    aConnect.sendGetRequest(printResultsClosure)
        
                    aConnect.sendPostRequest(printResultsClosure);
        
        let reachable = aConnect.networkConnectionType("packtpub.com")
        switch (reachable) {
        case HttpConnect.ConnectionType.mobile3GNETWORK:
            print("Mobile Connection")
        case HttpConnect.ConnectionType.wifinetwork:
            print("WIFI Connection")
        default:
            print("No Connection")
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

