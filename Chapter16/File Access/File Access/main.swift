//
//  main.swift
//  File Access
//
//  Created by Jon Hoffman on 7/23/17.
//  Copyright © 2017 Jon Hoffman. All rights reserved.
//

import Foundation

print("Hello, World!")

let fileManager = FileManager.default

do {
    let path = "/Users/jonhoffman/"
    let dirContents = try fileManager.contentsOfDirectory(atPath: path)
    for item in dirContents {
        print(item);
    }
} catch let error {
    print("Failed reading contents of dir: \(error)")
}

do {
    let path = "/Users/jonhoffman/masteringswift/test/dir"
    try fileManager.createDirectory(atPath: path, withIntermediateDirectories: true)
} catch let error {
    print("Failed creating dir, Error: " + error.localizedDescription)
}

do {
    let pathOrig = "/Users/jonhoffman/masteringswift/"
    let pathNew = "/Users/jonhoffman/masteringswift2/"
    try fileManager.copyItem(atPath: pathOrig, toPath: pathNew)
} catch let error {
    print("Failed copying dir, Error: " + error.localizedDescription)
}

do {
    let pathOrig = "/Users/jonhoffman/masteringswift2/"
    let pathNew = "/Users/jonhoffman/masteringswift3/"
    try fileManager.moveItem(atPath: pathOrig, toPath: pathNew)
} catch let error {
    print("Failed moving dir, Error: " + error.localizedDescription)
}

do {
    let path = "/Users/jonhoffman/masteringswift/"
    try fileManager.removeItem(atPath: path)
} catch let error {
    print("Failed creating dir, Error: " + error.localizedDescription)
}



let path = "/Users/jonhoffman/masteringswift3/test.file"
if fileManager.fileExists(atPath: path) {
    let isReadable = fileManager.isReadableFile(atPath: path)
    let isWriteable = fileManager.isWritableFile(atPath: path)
    let isExecutable = fileManager.isExecutableFile(atPath: path)
    let isDeleteable = fileManager.isDeletableFile(atPath: path)
    print("can read \(isReadable)")
    print("can write \(isWriteable)")
    print("can execute \(isExecutable)")
    print("can delete \(isDeleteable)")
}

