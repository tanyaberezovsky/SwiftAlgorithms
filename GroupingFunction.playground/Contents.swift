//: Playground - noun: a place where people can play

import Foundation

print(listOfPersons)

print(groupedDictionary)

var groupedPeople = [[Person]]()

keys.forEach { (key) in
    groupedPeople.append(groupedDictionary[key]!)
}

groupedPeople.forEach({
    $0.forEach({print($0)})
    print("______________________")
})

