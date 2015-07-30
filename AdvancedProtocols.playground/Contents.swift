// Advanced Protocols

protocol Printable {
    func description() -> String
}

// "[someKey: someValue, anotherKey: anotherValue]"

protocol PrettyPrintable: Printable {
    func prettyDescription() -> String
}