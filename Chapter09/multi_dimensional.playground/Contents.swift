// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct TicTacToe {
    var board = [["","",""],["","",""],["","",""]]
    
    subscript(x: Int, y: Int) -> String {
        get {
            return board[x][y]
        }
        set {
            board[x][y] = newValue
        }
    }
}

var board = TicTacToe()
board[1,1] = "x"
board[0,0] = "o"
print(board.board)


struct SayHello {
    subscript(messageText message:String,messageName name:String, number number:Int) -> [String]{
        var retArray: [String] = []
        for _ in 0..<number
        {
            retArray.append("\(message) \(name)")
        }
        return retArray
    }
}

var message = SayHello()
print(message[messageText:"Bonjour",messageName:"Jon",number:5])


