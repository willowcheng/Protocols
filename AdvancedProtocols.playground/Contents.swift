// Advanced Protocols

protocol Printable {
    func description() -> String
}

// "[someKey: someValue, anotherKey: anotherValue]"

protocol PrettyPrintable: Printable {
    func prettyDescription() -> String
}

// Vehicle Protocol

protocol Brakeable {
    var brakes: String { get }
    func stop()
    func slamOnBrakes()
}

protocol Drivable {
    var steeringWheel: String { get }
    var tires: String { get set }
    func startEngine()
    func stopEngine()
    func turnLeft()
    func turnRight()
    func reverse()
}

protocol Vehicle: Brakeable, Drivable {
    var numberOfSeats: Int { get }
}

protocol Car: Brakeable, Drivable {
    var numberOfDoors: Int { get }
}

func registerForRace(vehicle:protocol<Drivable, Brakeable>) {
    println("Start race")
}

import UIKit
let someView = UIView()