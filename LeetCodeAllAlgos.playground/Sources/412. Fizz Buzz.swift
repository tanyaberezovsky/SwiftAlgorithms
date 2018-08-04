import Foundation

public func fizzBuzz(_ num: Int) {
    var devidedBy3 = false
    var devidedBy5 = false
    if num < 0 { return }
    for i in 1...num {
        devidedBy3 = i % 3 == 0 ? true : false
        devidedBy5 = i % 5 == 0 ? true : false
        if devidedBy3 && devidedBy5 {
            print("FizzBuzz")
        } else if devidedBy3 {
            print("Fizz")
        } else if devidedBy5 {
            print("Buzz")
        } else {
            print(i)
        }
    }
}
