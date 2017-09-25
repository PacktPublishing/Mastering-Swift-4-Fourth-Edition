//
//  ViewController.swift
//  SwiftExample
//
//  Created by Jon Hoffman on 7/15/17.
//  Copyright © 2017 Jon Hoffman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageBox: UITextView?
    @IBOutlet weak var nameField: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func messagePressed(_ sender: UIButton) {
        let message = MessageBuilder()
        messageBox!.text = message.getPersonalizedMessage(forName: nameField!.text);
    }

}

