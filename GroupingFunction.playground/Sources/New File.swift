import Foundation

public struct Person {
    let name: String
    let secondName: String
    let age: Int
}

public var listOfPersons: [Person] = [Person(name: "Tanya", secondName: "Berezovsky", age: 30),
                               Person(name: "Shosi", secondName: "Weizman", age: 4),
                               Person(name: "Laura", secondName: "Perezotti", age: 36),
                               Person(name: "Alex", secondName: "Miretsky", age: 4),
                               Person(name: "Alissa", secondName: "Lud", age: 30)]

public var groupedDictionary = Dictionary(grouping: listOfPersons) { (person) -> Int in
    return person.age
}

public let keys = groupedDictionary.keys.sorted()


