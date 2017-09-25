// Playground - noun: a place where people can play

import UIKit

enum Planets {
    case Mercury, Venus, Earth, Mars, Jupiter
    case Saturn, Uranus, Neptune
}


var planetWeLiveOn = Planets.Earth
var furthestPlanet = Planets.Neptune

planetWeLiveOn = .Mars

if planetWeLiveOn == .Mars {
    print("Mars it is")
}


switch planetWeLiveOn {
    case .Mercury:
    print("We live on Mercury, it is very hot!")
    case .Venus:
    print("We live on Venus, it is very hot!")
    case .Earth:
        print("We live on Earth, just right")
    case .Mars:
        print("We live on Mars, a little cold")
    default:
        print("Where do we live?")
    }


enum Devices: String {
    case MusicPlayer = "iPod"
    case Phone = "iPhone"
    case Tablet = "iPad"
}
print("We are using an " + Devices.Tablet.rawValue)

