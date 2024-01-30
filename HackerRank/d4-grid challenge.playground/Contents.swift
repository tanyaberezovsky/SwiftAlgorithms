import Foundation

/*
 * Complete the 'gridChallenge' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts STRING_ARRAY grid as parameter.
 */

func gridChallenge(grid: [String]) -> String {
    // Write your code here
 
var grid = grid
    grid[0] = String(grid[0].sorted())
    
    for i in 1..<grid.count {
        let prefStr = grid[i - 1]
        let str = String(grid[i].sorted())
        grid[i] = str
        if !prefStr.lexicographicallyPrecedes(str) {
            return "NO"
        }
//        if !twoStrAccending(prefStr, str) {
//            return "NO"
//        }
    }
    return "YES"
}

func twoStrAccending(_ str1: String, _ str2: String) -> Bool {
    var str1 = str1
    var str2 = str2
    var char1: Character
    var char2: Character
    for _ in 0 ..< str1.count {
        char1 = str1.removeLast()
        char2 = str2.removeLast()
        if char1 > char2 {
            return false
        }
    }
    return true
}
gridChallenge(grid:  ["ebacd", "wghij", "olmkn", "trpqs", "xywuv"])




func superDigit(n: String, k: Int) -> Int {
    if k == 1 { return Int(n) ?? 0}
   let result = n.reduce(0) { partialResult, char in
        guard let num = Int("\(char)") else { return partialResult }
        return partialResult + num
    }
    return superDigit(n: "\(result)", k: "\(result)".count)
}

superDigit(n: "148", k: 3)

/*
 1+4+8 = 13
 1+3 = 4
 */
