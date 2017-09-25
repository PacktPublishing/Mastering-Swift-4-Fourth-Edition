// Playground - noun: a place where people can play

import UIKit

var myOptional: String?

if let temp = myOptional {
    print(temp)
    print("Cannot use temp outside of this context")
} else {
    print("myOptional is nil")
}
