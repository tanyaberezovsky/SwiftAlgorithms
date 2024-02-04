import Foundation


func findIndex(arr: [Int], num: Int) -> Int {
    let count = arr.count - 1
    var mid = count / 2
    repeat {
        print("mid \(mid)")
        
        if arr[mid] == num {
            break
        }
        if num > arr[mid] {
            mid = mid + ((count - mid) / 2)
        } else {
            mid = mid / 2
        }
    } while mid > 0 && mid < arr.count
    
    return mid
}




func findIndex2(arr: [Int], num: Int) -> Int {
    let arr = arr.sorted()
    var max = arr.count - 1
    var min = 0
    var mid = max / 2
//    for i in stride(from: 0, to: (arr.count / 2), by: 1) {
//        print("i = \(i) a[i] = \(arr[i]) max-i = \(max-i) a[max] = \(arr[max - i])")
//    }

    repeat {
        print("mid \(mid)")
        mid = min + (max - min) / 2
        if arr[mid] == num {
            break
        }
        if num > arr[mid] {
            min = mid + 1
        } else {
            max = mid - 1
        }
    } while min < max
    
    return mid
}

findIndex2(arr: [11, 22, 33, 44, 55, 66, 77, 88, 99, 110], num: 22)
/*
 mid
 
 4  55 < 99
 
 */
func allSubsets<T>(of set: Set<T>) -> [[T]] {
    if set.isEmpty {
        return [[]] // Base case: empty set has only the empty subset
    }

    var subsets = [[T]]()
    let firstElement = set.first!
    let remainingElements = set.dropFirst()

    // Recursively find subsets of the remaining elements
    let subsetsOfRemaining = allSubsets(of: Set(remainingElements))

    // Create new subsets by adding the first element to each subset of the remaining elements
    subsets.append(contentsOf: subsetsOfRemaining.map { $0 + [firstElement] })

    // Also include the subsets without the first element
    subsets.append(contentsOf: subsetsOfRemaining)

    return subsets
}

let mySet: Set<Int> = [1, 2, 3]
print(allSubsets(of: mySet))
//print(allSubsets)
