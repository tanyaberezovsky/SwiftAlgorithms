import Foundation

//485. Max Consecutive Ones
public  func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var globalConsecutive = 0, localConcecutive = 0
    nums.forEach( {
        if $0 == 1 {
            localConcecutive += 1
            globalConsecutive = max(globalConsecutive, localConcecutive)
        } else {
            localConcecutive = 0
        }
    } )
    return globalConsecutive
}
