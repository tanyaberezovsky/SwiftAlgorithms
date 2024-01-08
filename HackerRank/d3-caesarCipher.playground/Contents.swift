import Foundation
//
//func caesarCipher(s: String, k: Int) -> String {
//    var newS = ""
//    
//    s.forEach { char in
//        if char.isLetter {
//        
//            let newchar = Character(UnicodeScalar(newAscii(char: char, k: k)))
//            newS.append(newchar)
//        } else {
//            newS.append(char)
//        }
//    }
//    return newS
//}
//
//func newAscii(char: Character, k: Int) -> UInt8 {
//    let k = k > 26 ? k % 26 : k
//    guard let asciiValue = char.asciiValue
//    else { return 0 }
//    var ascii = asciiValue + UInt8(k % 26)
//    if char.isUppercase {
//        if ascii > 90 {
//            ascii = 65 + (ascii - 91)
//        }
//    } else {
//        if ascii > 122 {
//            ascii = 97 + (ascii - 123)
//        }
//    }
////
////    65 (uppercase 'A') and go up to 90 (uppercase 'Z'), while lowercase letters start from 97 ('a') and go up to 122 ('z').
//    return ascii
//}
func caesarCipher(s: String, k: Int) -> String {
    return s.map { char in
        guard let asciiValue = char.asciiValue, char.isLetter else { return "\(char)" }
        let kb = k > 26 ? k % 26 : k
        print(UInt8(k % 26))
        print(kb)
        var shiftedAscii = asciiValue + UInt8(k % 26)
        if char.isLetter {
            shiftedAscii = shiftedAscii.wrapAround(start: char.isUppercase ? 65 : 97, end: char.isUppercase ? 90 : 122)
        }

        return "\(Character(UnicodeScalar(shiftedAscii)))"
    }.joined()
}

extension UInt8 {
    func wrapAround(start: UInt8, end: UInt8) -> UInt8 {
        return (self - start) % 26 + start
    }
}

caesarCipher(s: "Hello_World!", k: 6)

