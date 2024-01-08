import Foundation


func findZigZagSequence(a: [Int]) {
    let arr = a.sorted()
    
    print("\(arr.suffix((arr.count - 1) / 2) + arr.prefix((arr.count) / 2))")
}


findZigZagSequence(a: [1,2,3,4,6,5])
