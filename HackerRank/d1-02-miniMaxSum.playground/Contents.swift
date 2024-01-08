import Foundation

func miniMaxSum(arr: [Int]) -> Void {
    var minimum = arr[0]
    var maximum = arr[0]
    var sum = 0
    arr.forEach { num in
        sum += num
        minimum = min(minimum, num)
        maximum = max(maximum, num)
    }
    print("\(sum - maximum) \(sum - minimum)")
}


