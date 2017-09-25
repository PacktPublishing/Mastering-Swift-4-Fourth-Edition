// Playground - noun: a place where people can play

import UIKit



class TestType {
    typealias ResultsClosure = ((String) -> Void)

    func isGreater(numOne: Int, numTwo:Int, successHandler: ResultsClosure, failureHandler: ResultsClosure) {
        if numOne > numTwo {
            successHandler("\(numOne) is greater than \(numTwo)")
        } else {
            failureHandler("\(numOne) is not greater than \(numTwo)")
        }

    }
}

var success: TestType.ResultsClosure = {
    print("Success: \($0)")
}

var failure: TestType.ResultsClosure = {
    print("Failure: \($0)")
}

var test = TestType()
test.isGreater(numOne: 6, numTwo: 8, successHandler:success, failureHandler:failure)


