import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {
    var left: Int = 0
    var right = 0
    for i in 0 ..< arr.count {
        left += arr[i][i]
        right += arr[i][arr.count - 1 - i]
    }
    return abs(right - left)
}


diagonalDifference(arr: [[1,2,3],[4,5,6],[9,8,9]])
