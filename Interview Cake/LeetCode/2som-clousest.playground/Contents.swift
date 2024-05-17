import Foundation


func sunClousest(a: [Int], target: Int) -> Int {
    
    var a = a.sorted()
    var i = 0
    var j = a.count - 1
    var clousestSum = a[i] + a[j]

    repeat {
        var currentSum = a[i] + a[j]
        print("i = \(i) j = \(j)")
        if currentSum == target {
            return currentSum
        }
        if abs(currentSum - target) < abs(clousestSum - target) {
//            return clousestSum
//        } else {
            clousestSum = currentSum
        }
        if currentSum > target {
            j -= 1
        } else {
            i += 1
        }
    } while i < j
    return clousestSum
}

sunClousest(a: [1,2,3,4,5,6,7], target: 5)
sunClousest(a: [4,6,7,10], target: 6)
sunClousest(a: [1,2,8,7,10], target: 6)

func twoPointers(nums: [Int], target: Int) -> Int {
  // Handle empty array case
  if nums.isEmpty {
    return 0 // Or any default value you want to return
  }

  // Sort the array for efficient comparison
  let sortedNums = nums.sorted()

  // Initialize variables
  var i = 0
  var j = sortedNums.count - 1
  var closestSum = sortedNums[i] + sortedNums[j] // Initialize with first two elements

  // Iterate until pointers meet
  while i < j {
    let currentSum = sortedNums[i] + sortedNums[j]

    // Update closest sum if closer to target
    closestSum = abs(currentSum - target) < abs(closestSum - target) ? currentSum : closestSum

    // Move pointers towards the closer sum
    if currentSum < target {
      i += 1
    } else {
      j -= 1
    }
  }

  return closestSum
}

twoPointers(nums: [1,2,3,4,5,6,7], target: 5)
twoPointers(nums: [4,6,7,10], target: 6)
twoPointers(nums: [1,2,3,7,10], target: 6)
