import Foundation

public func plusOne(_ digits: [Int]) -> [Int] {
    var digits = digits
    print("count \(digits.count)")
    for i in (0..<digits.count).reversed() {
    print("digit[\(i)] \(digits[i])")
        if digits[i] < 9 {
            digits[i] = digits[i] + 1
            break
        } else {
            digits[i] = 0
            if i == 0 {
                digits.insert(1, at: 0)
            }
        }
    }
    return digits
}


func plusOne_fails_On_Long_Arrays(_ digits: [Int]) -> [Int] {
    if digits.count == 1 && digits[0] < 9 { return [digits[0] + 1] }
    let sumOfNumbers = digits.reduce(0){ ($0 * 10) + $1 } + 1
    return "\(sumOfNumbers)".compactMap { Int(String($0)) }
}
