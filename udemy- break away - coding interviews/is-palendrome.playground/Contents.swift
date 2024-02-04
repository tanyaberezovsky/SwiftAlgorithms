import Foundation

var greeting = "Ma dam".lowercased()
    .trimmingCharacters(in: .whitespaces)
    .reversed()
print(greeting)


func isPalendrom(_ word: String) -> Bool {
    var s = word.lowercased().replacingOccurrences(of: " ", with: "")
    print("s = \(s)")
    var palendrom = String(s.reversed())
    return palendrom == s ? true : false
}

isPalendrom("Ma dam")


func isPalendrom2(_ word: String) -> Bool {
    var s = word.lowercased().replacingOccurrences(of: " ", with: "")
    print("s = \(s)")
    var palendrom = String(s.reversed())
    return palendrom == s ? true : false
}

isPalendrom2("Ma dam")

//func isPalindrome3(_ str: String) -> Bool {
//  var left = str.startIndex
//  var right = str.endIndex
//
//  while left < right {
//    if str[left] != str[right] {
//      return false
//    }
//    left = str.index(after: left)
//    right = str.index(before: right)
//  }
//
//  return true
//}
func isPalindrome4(_ str: String) -> Bool {
    var str = str
  
    while str.count > 1 {
        var left = str.removeFirst()
        var right = str.removeLast()
        if left != right {
            return false
        }
  }

  return true
}
isPalindrome4("maddsam")


func printMatrix(_ m: [[Int]]) {
    for i in stride(from: 0, to: m.count, by: 1) {
        for j in stride(from: 0, to: m.count, by: 1) {
            print(m[i][j])
        }
    }
}
printMatrix([[1,2,3], [6,7,8], [2,7,0]])
