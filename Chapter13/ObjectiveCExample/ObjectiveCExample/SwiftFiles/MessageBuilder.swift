//
//  MessageBuilder.swift
//  ObjectiveCExample
//
//  Created by Jon Hoffman on 7/15/17.
//  Copyright © 2017 Jon Hoffman. All rights reserved.
//

import Foundation

class MessageBuilder: NSObject {
    
    func getPersonalizedMessage(name: String) -> String {
        let messages = Messages()
        let retMessage = "To: " + name + ", " + messages.getMessage()
        return retMessage;
    }

}

