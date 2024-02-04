import Foundation


func reverce(s: String) -> String {
    
    var revercedStr = ""
    
    for char in s {
        revercedStr = "\(char)\(revercedStr)"
    }
    return revercedStr
}
reverce(s: "abcd")

func reverceRecution(s: String) -> String {
    
    if s.isEmpty {
        return ""
    } else {
        return "\(reverceRecution(s: String(s.dropFirst())))\(s.first!)"
    }
}
reverceRecution(s: "abcd")
func reverseString(_ str: String) -> String {
  if str.isEmpty {
    return ""
  } else {
    return String(str.last!) + reverseString(String(str.dropLast()))
  }
}
reverseString("abcd")

var s = "abcd"
s.removeLast()
print(s)
s = String(s.dropLast())
print(s)
