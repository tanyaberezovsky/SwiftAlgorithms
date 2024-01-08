import Foundation


func lonelyinteger(a: [Int]) -> Int {
    var dict: [Int: Int] = [:]
    
    a.forEach { num in
        if dict[num] != nil {
            dict[num] = nil
        } else {
            dict[num] = 1
        }
    }
    return dict.keys.first ?? 0
}


lonelyinteger(a: [9,2,1,1,9,2,3])
