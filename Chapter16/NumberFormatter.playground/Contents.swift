//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let formatter1 = NumberFormatter()
formatter1.numberStyle = .currency
let num1 = formatter1.string(from: 23.99)

let formatter2 = NumberFormatter()
formatter2.numberStyle = .decimal
formatter2.maximumFractionDigits = 2
let num2 = formatter2.string(from: 23.2357)



let formatter3 = NumberFormatter()
formatter3.numberStyle = .spellOut
formatter3.string(from: 2015)

let formatter4 = NumberFormatter()
formatter4.numberStyle = .scientific
formatter4.string(from: 2345678)
 
