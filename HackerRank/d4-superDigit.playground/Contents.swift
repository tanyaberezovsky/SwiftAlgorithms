import UIKit


func superDigit(n: String, k: Int) -> Int {
    if k == 0 { return 0}
   let result = n.reduce(0) { partialResult, char in
        guard let num = Int("\(char)") else { return partialResult }
        return partialResult + num
    }
    print("partial result \(result)")
    return superDigit(n: "\(result)", k: k-1)
}


print(superDigit(n:"148", k: 3))
//superDigit(n:"9875")

func gridChallenge(grid: [String]) -> String {
    guard grid.count > 1 else { return "YES"}
    var prev = grid.first ?? ""
    var gridChallenge = "YES"
    for i in 1..<grid.count {
        let current = grid[i]
        for j in 0..<prev.count {
            if prev[j].asciiValue > current[j].asciiValue {
                return "NO"
            }
        }
        prev = current
    }
    
    return "YES"
}
gridChallenge(grid:["abc", "ade", "fkz"])
