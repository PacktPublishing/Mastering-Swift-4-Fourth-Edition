// Playground - noun: a place where people can play

import UIKit

var arrayOne = [1,2]
var arrayTwo = [Int]()
arrayOne.isEmpty  //Returns false because the array is not empty
arrayTwo.isEmpty  //Returns true because the array is empty

arrayOne.append(3)  //arrayOne will now contain 1, 2 and 3
arrayOne += [3,4]

var arrayThree = [1,2,3,4,5]
arrayThree.insert(10, at: 3) //arrayThree now contains 1, 2, 3, 10, 4 and 5

var arrayFour = [1,2,3]
arrayFour[1] = 10  //arrayFour now contains 1,10,3


var arrayFive = [1, 2, 3, 4, 5]
arrayFive.removeLast() //arrayFive now contains 1,2,3 and 4
arrayFive.remove(at: 2)  //arrayFive now contains 1, 2 and 4
arrayFive.removeAll()  //arrayFive is now empty


let arraySix = [1,2]
let arraySeven = [3,4]
var combine = arraySix + arraySeven //combine contains 1, 2, 3 and 4

var arrayEight = [1,2,3]
var reverse = arrayEight.reversed() //reverse contains 3,2 and 1

var arrayNine = [1,2,3,4,5]
var subArray = arrayNine[2...4] //subArray contains 3, 4 and 5
subArray = arrayNine[2..<4] //subArray contains 3 and 4

var arrayTen = [1,2,3,4,5]
arrayTen[1...2] = [12,13]//arrayOne contains 1,12,13,4 and 5

var arrayEleven = [1,2,3,4,5]
arrayEleven[1...3] = [12,13] //arrayOne now contains 1, 12, 13 and 5 (four elements)

var arrayTwelve = [1,2,3,4,5]
arrayTwelve[1...3] = [12,13,14,15] //arrayOne now contains 1, 12, 13, 14, 15 and 5 (six elements)

var arrayFourteen = [1,2,3,4,5]
arrayFourteen[1...3] //arrayOne contains 1 and 5

