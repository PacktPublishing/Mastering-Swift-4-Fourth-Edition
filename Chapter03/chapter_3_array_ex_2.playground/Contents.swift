// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let arrayOne = [1,2,3,4,5,6]
print(arrayOne[0])  //Displays ‘1’
print(arrayOne[3])  //Displays ‘4’

var first = arrayOne.first //first contains 1
var last = arrayOne.last //last contains 6


var multiArray = [[1,2],[3,4],[5,6]]
var arr = multiArray[0] //arr would contain the array [1,2]
var value = multiArray[0][1] //value would contain 2

var arrFirst1 = multiArray[0].first //arrFirst1 contains 1
var arrFirst2 = multiArray.first //arrFirst2 contains [1,2]
var arrLast1 = multiArray[0].last //arrLast1 contains 2
var arrLast2 = multiArray.last //arrLast2 contains [5,6]
