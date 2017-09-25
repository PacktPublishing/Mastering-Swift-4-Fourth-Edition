// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func reverse( first: inout String, second: inout String) {
    let tmp = first
    first = second
    second = tmp
}

var one = "One"
var two = "Two"
reverse(first: &one, second: &two)
print("one: \(one)  two: \(two)")
