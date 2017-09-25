// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Plant {
    var height: Double = 0.0 {
        didSet {
            print("Plant is now \(height) inches.")
        }
    }
    var age = 0
    
    var description: String {
        get {
            return "Base class is Plant."
        }
    }
    
    func growHeight(inches: Double) {
        self.height += inches
    }
    
    func getDetails() -> String {
        return "Height: \(self.height)  age:  \(self.age)"
    }
}


class Tree: Plant {
    var limbs = 0
    
    override var height: Double {
        didSet {
            print("Tree is now \(height) inches.")
        }
    }
    
    override var description: String {
        return "\(super.description)  I am a tree."
    }
    
    func limbGrow() {
        self.limbs += 1
    }
    func limbFall() {
        self.limbs -= 1
    }
    override func getDetails() -> String {
        return " \(super.getDetails()) Limbs:  \(self.limbs)"
    }
}


class PineTree: Tree {
    var needles = 0
    
    override func getDetails() -> String{
        return " \(super.getDetails())  Needles:  \(self.needles)"
    }
}

class OakTree: Tree {
    var leaves = 0
    override func getDetails() -> String{
        return " \(super.getDetails())  Leaves:  \(self.leaves)"
    }
}

var tree = Tree()
print(tree.description)
tree.height = 25
tree.limbGrow()
tree.limbGrow()
print(tree.limbs)

