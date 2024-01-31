import Foundation


func strcmp(str1: String, str2: String) -> Int {
    var str1 = str1
    var str2 = str2
    var diff = 0
    while (!str1.isEmpty && !str2.isEmpty), let val1 = str1.removeFirst().toInt, let val2 = str2.removeFirst().toInt {
        if val1 - val2 != 0 {
            return val1 - val2
        }
    }
    if str1.isEmpty && str2.isEmpty {
        return 0
    }
    if str1.isEmpty {
        return -1
    }
        return 1
}

extension Character {
    var toInt: Int? {
        guard let value = self.asciiValue else { return nil }
        return Int(value)
    }
}

//strcmp(str1: "abc", str2: "abc")
strcmp(str1: "abcw", str2: "acb")
//strcmp(str1: "abc", str2: "abcw")
