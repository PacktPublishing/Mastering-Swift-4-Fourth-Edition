//: Playground - noun: a place where people can play

import Cocoa

struct Book: Codable {
    var name: String
    var author: String
    var publisher: String
}


let book1 = Book(name: "Mastering Swift 3", author: "Jon Hoffman", publisher: "Packt Publishing")

let encoder = JSONEncoder()
encoder.outputFormatting = .prettyPrinted
let dataEncoder = try? encoder.encode(book1)
if let data = dataEncoder, let dataString = String(data: data, encoding: .utf8) {
    print(dataString)
    let decoder = JSONDecoder()
    
    if let jsonData = dataString.data(using: .utf8) {
        let objs = try decoder.decode(Book.self, from: jsonData)
        print(objs)
    }
}

var jsonString = """
{
"name" : "Mastering Swift 3",
"author" : "Jon Hoffman",
"publisher" : "Packt Publishing"
}
"""
if let jsonData = jsonString.data(using: .utf8) {
    let decoder = JSONDecoder()
    let objs = try decoder.decode(Book.self, from: jsonData)
    print(objs)
}


let book2 = Book(name: "Mastering Swift 4", author: "Jon Hoffman", publisher: "Packt Publishing")
let books = [book1, book2]
let dataEncoder2 = try? encoder.encode(books)
if let data = dataEncoder2, let dataString = String(data: data, encoding: .utf8) {
    print(dataString)
    let decoder = JSONDecoder()
    let objs = try decoder.decode([Book].self, from: data)
    for obj in objs {
        print(obj)
    }
}

var jsonString2 = """
[{
"name" : "Mastering Swift 3",
"author" : "Jon Hoffman",
"publisher" : "Packt Publishing"
},
{
"name" : "Mastering Swift 4",
"author" : "Jon Hoffman",
"publisher" : "Packt Publishing"
}]
"""
if let jsonData = jsonString2.data(using: .utf8) {
    let decoder = JSONDecoder()
    let objs = try decoder.decode([Book].self, from: jsonData)
    for obj in objs {
        print(obj)
    }
}


