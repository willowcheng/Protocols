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