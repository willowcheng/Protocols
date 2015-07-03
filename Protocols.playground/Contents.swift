//: Protocols

protocol FullyNamed {
    var fullName: String { get }
}

struct User: FullyNamed {
    var fullName: String
}

let user = User(fullName: "John Smith")

struct Friend: FullyNamed {
    
    var firstName: String
    var middleName: String
    var lastName: String
    
    var fullName: String {
        return "\(firstName) \(middleName) \(lastName)"
    }
    
}

let friend = Friend(firstName: "Taylor", middleName: "Alison", lastName: "Swift")
friend.fullName



// Inheritance vs. Protocols
import Foundation

protocol Payable {
    func pay() -> (basePay: Int, benefits: Int, deductions: Int, vacationTime: Int)
}

class Employee {
    
    let name: String
    let address: String
    let startDate: NSDate
    let type: String
    
    var department: String?
    var reportsTo: Employee?
    
    init(fullName: String, employeeAddress: String, employeeStartDate: NSDate, employeeType: String) {
        name = fullName
        address = employeeAddress
        startDate = employeeStartDate
        type = employeeType
    }
}

class HourlyEmployee: Employee, Payable {
    
    let hourlyWage = 12
    let hoursWorked = 40
    let availableVacation = 0
    
    func pay() -> (basePay: Int, benefits: Int, deductions: Int, vacationTime: Int) {
        return (hourlyWage * hoursWorked, 0,0, availableVacation)
    }
}

class SalariedEmployee: Employee {
    let salary = 40000
}