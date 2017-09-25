// Playground - noun: a place where people can play

import UIKit
protocol Message {
    var messageString: String {get set}
    init(messageString: String)
    func prepareMessage()
}

protocol Sender {
    var message: Message? {get set}
    func sendMessage()
    func verifyMessage()
}

class PlainTextMessage: Message {
    var messageString: String
    required init(messageString: String) {
        self.messageString = messageString
    }
    func prepareMessage() {
        //  Nothing to do
    }
}

class AESEncryptedMessage: Message {
    var messageString: String
    required init(messageString: String) {
        self.messageString = messageString
    }
    func prepareMessage() {
        self.messageString = "AES: " + self.messageString
    }
}


class DESEncryptedMessage: Message {
    var messageString: String
    required init(messageString: String) {
        self.messageString = messageString
    }
    func prepareMessage() {
        self.messageString = "DES: " + self.messageString
    }
}


class EmailSender: Sender {
    var message: Message?
    func sendMessage() {
        print("Sending through E-Mail:")
        print("     \(message!.messageString)")
    }
    func verifyMessage() {
        print("Verifying E-Mail message")
    }
}

class SMSSender: Sender {
    var message: Message?
    func sendMessage() {
        print("Sending through SMS:")
        print("     \(message!.messageString)")
    }
    func verifyMessage() {
        print("Verifying SMS message")
    }
}

struct MessageingBridge {
    static func sendMessage(message: Message, sender: Sender) {
        var sender = sender
        message.prepareMessage()
        sender.message = message
        sender.verifyMessage()
        sender.sendMessage()
    }
    
}

var myMessage = PlainTextMessage(messageString: "Plain Text Message")
var myEncMessage = AESEncryptedMessage(messageString: "Encrypted Message")

MessageingBridge.sendMessage(message: myMessage, sender: SMSSender())

MessageingBridge.sendMessage(message: myMessage, sender: EmailSender())

MessageingBridge.sendMessage(message: myEncMessage, sender: EmailSender())

