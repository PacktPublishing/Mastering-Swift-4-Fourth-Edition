//: Playground - noun: a place where people can play

import UIKit

protocol TextValidating {
    
    var regExMatchingString: String {get}
    var regExFindMatchString: String {get}
    var validationMessage: String {get}
    
    func validateString(str: String) -> Bool
    func getMatchingString(str: String) -> String?
    
}

class AlphaValidation1: TextValidating {
    static let sharedInstance = AlphaValidation1()
    private init(){}
    
    let regExFindMatchString = "^[a-zA-Z]{0,10}"
    let validationMessage = "Can only contain Alpha characters"
    
    var regExMatchingString: String { get {
        return regExFindMatchString + "$"
        }
    }
    
    func validateString(str: String) -> Bool {
        if let _ = str.range(of:regExMatchingString, options: .regularExpression) {
            return true
        } else {
            return false
        }
    }
    func getMatchingString(str: String) -> String? {
        if let newMatch = str.range(of:regExFindMatchString, options: .regularExpression) {
            return str.substring(with:newMatch)
        } else {
            return nil
        }
    }
}


extension TextValidating {
    
    var regExMatchingString: String { get {
        return regExFindMatchString + "$"
        }
    }
    
    func validateString(str: String) -> Bool {
        if let _ = str.range(of:regExMatchingString, options: .regularExpression) {
            return true
        } else {
            return false
        }
    }
    func getMatchingString(str: String) -> String? {
        if let newMatch = str.range(of:regExFindMatchString, options: .regularExpression) {
            return str.substring(with: newMatch)
        } else {
            return nil
        }
    }
}


class AlphaValidation: TextValidating {
    static let sharedInstance = AlphaValidation()
    private init(){}
    
    let regExFindMatchString = "^[a-zA-Z]{0,10}"
    let validationMessage = "Can only contain Alpha characters"
}

class AlphaNumericValidation: TextValidating {
    static let sharedInstance = AlphaNumericValidation()
    private init(){}
    
    let regExFindMatchString = "^[a-zA-Z0-9]{0,15}"
    let validationMessage = "Can only contain Alpha Numeric characters"
}


class DisplayNameValidation: TextValidating {
    static let sharedInstance = DisplayNameValidation()
    private init(){}
    
    let regExFindMatchString = "^[\\s?[a-zA-Z0-9\\-_\\s]]{0,15}"
    let validationMessage = "Display Name can contain a maximum of 15 Alphanumeric Characters"
}


var myString1 = "abcxyz"
var myString2 = "abc123"

var validation = AlphaValidation.sharedInstance

validation.validateString(str: myString1)
validation.getMatchingString(str: myString1)

validation.validateString(str: myString2)
validation.getMatchingString(str: myString2)

