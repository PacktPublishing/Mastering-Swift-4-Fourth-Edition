// Playground - noun: a place where people can play

import UIKit

let arrayOne = [1,2,3]let multiArrayOne = [[3,4],[5,6],[7,8]]print(arrayOne.count)  //Displays 3print(multiArrayOne.count)  //Displays 3 for the three arraysprint(multiArrayOne[0].count)  //Displays 2 for the two elements

//This example will throw an array index out of range error
var arrayTwo = [1,2,3,4]//println(arrayTwo[6])//This example will not throw an array index out of range                //errorvar arrayThree = [1,2,3,4]if (arrayThree.count > 6) {    print(arrayThree[6])}