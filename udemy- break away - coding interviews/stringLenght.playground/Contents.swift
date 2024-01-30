import Foundation


func strLenght(str: String?) -> Int {
    guard let str = str else { return 0 }
    
    var lenght = 0
    str.forEach { _ in
        lenght += 1
    }
    return lenght
}


strLenght(str: "Sunday evening")


func strChar(str: String?, ascii: Int8) -> Bool {
    guard var str = str, str.count > 0 else { return false }
    
    var char = str.removeFirst()
    repeat {
        print("\(char.asciiValue ?? 0)")
        if let asciiValue = char.asciiValue, asciiValue == ascii {
            return true
        }
        char = str.removeFirst()
    } while str.count > 0
    return false
}


strChar(str: "Sunday evening", ascii: 87)
strChar(str: "Sunday evening", ascii: 110)

func strstr_while(str: String, nidle: String) -> Int? {
  var str = str
  var index = 0
  guard str.count >= nidle.count else { return nil }
   
  while str.count >= nidle.count {
    if str.hasPrefix(nidle) {
      return index
    }
    index += 1
    str.removeFirst()
  }
  return nil
}


func strstr(str: String, nidle: String) -> Int? {
    var str = str
    
    for i in stride(from: 0, through: str.count - nidle.count, by: 1) {
        if str.hasPrefix(nidle) {
            return i
        }
        str.removeFirst()
    }
    return nil
}

strstr(str: "sunday evening", nidle: "even")
strstr(str: "sunday evening", nidle: "even me")
strstr(str: "sunday evening", nidle: "sunday evening")
strstr(str: "sunday evening", nidle: "sunday evenings")
