// Playground - noun: a place where people can play

import UIKit

protocol FloorPlanProtocol {
    var bedRooms: Int {get set}
    var utilityRooms: Int {get set}
    var bathRooms: Int {get set}
    var kitchen: Int {get set}
    var livingRooms: Int {get set}
}


struct FloorPlan: FloorPlanProtocol {
    var bedRooms = 0
    var utilityRooms = 0
    var bathRooms = 0
    var kitchen = 0
    var livingRooms = 0
}

class House {
    var stories = [FloorPlanProtocol]()
    
    func addStory(floorPlan: FloorPlanProtocol) {
        stories.append(floorPlan)
    }
}

struct HouseProxy {
    var house = House()

    mutating func addStory(floorPlan: FloorPlanProtocol) -> Bool {
        if house.stories.count < 3 {
            house.addStory(floorPlan: floorPlan)
            return true
        } else {
            return false
        }
    }
}


var ourHouse = HouseProxy()
var basement = FloorPlan(bedRooms: 0, utilityRooms: 1, bathRooms: 1, kitchen: 0, livingRooms: 1)
var firstStory = FloorPlan(bedRooms: 1, utilityRooms: 0, bathRooms: 2, kitchen: 1, livingRooms: 1)
var secondStory = FloorPlan(bedRooms: 2, utilityRooms: 0, bathRooms: 1, kitchen: 0, livingRooms: 1)
var additionalStory = FloorPlan(bedRooms: 1, utilityRooms: 0, bathRooms: 1, kitchen: 1, livingRooms: 1)

print(ourHouse.addStory(floorPlan: basement))
print(ourHouse.addStory(floorPlan: firstStory))
print(ourHouse.addStory(floorPlan: secondStory))
print(ourHouse.addStory(floorPlan: additionalStory))



