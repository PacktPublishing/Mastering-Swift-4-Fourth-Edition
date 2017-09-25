//
//  Messages.swift
//  SwiftExample
//
//  Created by Jon Hoffman on 7/15/17.
//  Copyright © 2017 Jon Hoffman. All rights reserved.
//

import Foundation

class Messages: NSObject {
    
    private var messages = [String]()
    
    override init() {
        messages.append("You should learn from your mistakes")
        messages.append("It is in the now that we must live")
        messages.append("The greatest risk is not taking one")
        messages.append("You will be a Swift programmer")
    }
    
    @objc func getMessage() -> String {
        let num = Int(arc4random()) % messages.count
        return messages[num]
    }
}

