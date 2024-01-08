import Foundation


func countingSort(arr: [Int]) -> [Int] {
    var results: Array = Array(repeating: 0, count: 100)
    var sortedArr: [Int] = []
    arr.forEach { num in
        results[num] += 1
    }
    for i in 0..<results.count {
        if results[i] == 0 { continue }
        var num = results[i]
        while num > 0 {
            sortedArr.append(i)
            num -= 1
        }
        
    }
return sortedArr
}

countingSort(arr: [1,1,1,5,3,1])
