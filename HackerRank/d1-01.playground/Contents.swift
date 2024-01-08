import Foundation

/*
 * Complete the 'plusMinus' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func plusMinus(arr: [Int]) -> Void {
    var positive: Float = 0
    var negative: Float = 0
    var zero: Float = 0
    let count: Float = Float(arr.count)
    arr.forEach { num in
        if num == 0 {
            zero += 1
        } else if num < 0 {
            negative += 1
        } else {
            positive += 1
        }
    }
    print(String(format: "%.5f", positive / count))
    print(String(format: "%.5f", negative / count as CVarArg))
    print(String(format: "%.5f", zero / count as CVarArg))

}
plusMinus(arr: [2,1,0,0,-1,-2,0])
