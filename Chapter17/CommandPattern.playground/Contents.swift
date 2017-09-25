// Playground - noun: a place where people can play

import UIKit

protocol Command {
    func execute()
}

struct RockerSwitchLightOnCommand: Command {
    func execute() {
        print("Rocker Switch:  Turning Light On")
    }
}

struct RockerSwitchLightOffCommand: Command {
    func execute() {
        print("ocker Switch:  Turning Light Off")
    }
}

struct PullSwitchLightOnCommand: Command {
    func execute() {
        print("Pull Switch:  Turning Light On")
    }
}

struct PullSwitchLightOffCommand: Command {
    func execute() {
        print("Pull Switch:  Turning Light Off")
    }
}

class Light {
    private var lightOnCommand: Command
    private var lightOffCommand: Command
    
    init(lightOnCommand: Command, lightOffCommand: Command) {
        self.lightOnCommand = lightOnCommand
        self.lightOffCommand = lightOffCommand
    }
    
    func turnOnLight() {
        self.lightOnCommand.execute()
    }
    
    func turnOffLight() {
        self.lightOffCommand.execute()
    }
}


var on = PullSwitchLightOnCommand()
var off = PullSwitchLightOffCommand()
var light = Light(lightOnCommand: on, lightOffCommand: off)

light.turnOnLight()
light.turnOffLight()
