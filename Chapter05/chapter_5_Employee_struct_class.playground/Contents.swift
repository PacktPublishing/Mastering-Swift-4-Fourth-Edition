// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct EmployeeStruct {
    var firstName = ""
    var lastName = ""
    enum PersonalDataType {
        case DOB
        case STREETADDRESS
        case PHONENUMBER
    }
    private var personal: [PersonalDataType:String] = [:]
    
    subscript(dataType: PersonalDataType) ->String {
        get {
            if let dataTypeValue = personal[dataType] {
                return dataTypeValue
            } else {
                return "No Value Set"
            }
        }
        set (newValue){
            personal[dataType] = newValue
        }
    }
    
    private var equipment: [String:String] = [:]
    
    subscript(equipmentType: String) -> String {
        get {
            if let equipmentId = equipment[equipmentType] {
                return equipmentId
            } else {
                return "ID not found"
            }
        }
        set(newEquipmentId) {
            equipment[equipmentType] = newEquipmentId
        }
    }
    var salaryYear: Double = 0.0 {
        willSet {
            print("About to set salaryYear to \(newValue)")
        }
        didSet {
            if salaryWeek > oldValue {
                print("\(firstName) got a raise")
            } else {
                print("\(firstName) did not get a raise")
            }
        }
    }
    
    
    var salaryWeek: Double {
        get{
            return self.salaryYear/52
        }
        set (newSalaryWeek){
            self.salaryYear = newSalaryWeek*52
        }
    }
    
    init() {
        self.firstName = ""
        self.lastName = ""
        self.salaryYear = 0.0
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.salaryYear = 0.0
    }
    
    init(firstName: String, lastName: String, salaryYear: Double) {
        self.firstName = firstName
        self.lastName = lastName
        self.salaryYear = salaryYear
    }
    
    
    mutating func giveRase(amount: Double) {
        self.salaryYear += amount
    }
    
    func getFullName() -> String {
        return firstName + " " + lastName
    }
    func compareFirstName(firstName: String) -> Bool {
        return self.firstName == firstName
    }
}

public class EmployeeClass {
    var firstName = ""
    var lastName = ""
    enum PersonalDataType {
        case DOB
        case PICTURE
        case OFFICENUMBER
    }
    
    var personal: [PersonalDataType:String] = [:]
    var equipment: [String:String] = [:]
    
    subscript(equipmentType: String) -> String {
        get {
            if let equipmentId = equipment[equipmentType] {
                return equipmentId
            } else {
                return "ID not found"
            }
        }
        set(newEquipmentId) {
            equipment[equipmentType] = newEquipmentId
        }
    }
    
    subscript(personalType: PersonalDataType) -> String {
        get {
            if let personalDataInfo = personal[personalType] {
                return personalDataInfo
            } else {
                return "Type not found"
            }
        }
        set(newPersonalData) {
            personal[personalType] = newPersonalData
        }
    }
    var salaryYear: Double = 0.0 {
        willSet(newSalary) {
            print("About to set salaryYear to \(newSalary)")
        }
        didSet {
            if salaryWeek > oldValue {
                print("\(firstName) got a raise")
            } else {
                print("\(firstName) did not get a raise")
            }
        }
    }
    
    
    init() {
        self.firstName = ""
        self.lastName = ""
        self.salaryYear = 0.0
    }
    
    init(fName firstName: String, lName lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.salaryYear = 0.0
    }
    
    init(firstName: String, lastName: String, salaryYear: Double) {
        self.firstName = firstName
        self.lastName = lastName
        self.salaryYear = salaryYear
    }
    
    var salaryWeek: Double {
        get{
            return self.salaryYear/52
        }
        set (newSalaryWeek){
            self.salaryYear = newSalaryWeek*52
        }
    }
    
    
    func giveRase(amount: Double) {
        salaryYear += amount
    }
    
    func getFullName() -> String {
        return firstName + " " + lastName
    }
    
    func compareFirstName(firstName: String) -> Bool {
        return self.firstName == firstName
    }
}

var jon = EmployeeStruct(firstName: "Jon", lastName: "Hoffman")
jon.salaryYear = 60000
print("\(jon.salaryWeek)")

