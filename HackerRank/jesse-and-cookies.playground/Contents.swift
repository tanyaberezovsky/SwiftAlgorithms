import Foundation


func cookies(k: Int, A: [Int]) -> Int {
    guard A.count > 1 else { return -1 }
    var a = A.sorted()
    var operations = 0
    while a.count > 1 && a.first! <= k {
        let sweetness = a.removeFirst() + 2 * a.removeFirst()
        operations += 1
        a.append(sweetness)
        a.sort()
    }
    
    return a[0] <= k ? -1 : operations
}
//cookies(k: 9, A: [2, 7, 3, 6, 4, 6])
//
cookies(k: 7, A: [1, 2, 3, 9, 10, 12])

cookies(k: 10, A: [1, 1, 1])

for i in stride(from: 0, through: 10, by: 2) {
    print(i)
}

for i in stride(from: 0, to: 10, by: 2) {
    print(i)
}


for i in stride(from: 0, through: 10 / 2, by: 2) {
    print(i)
}
