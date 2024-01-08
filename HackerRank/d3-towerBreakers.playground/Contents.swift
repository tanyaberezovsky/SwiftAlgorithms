import Foundation



func towerBreakers(n: Int, m: Int) -> Int {
    var arr = Array(repeating: m, count: n)
    var player = 2
    var gameOver = false
    
    while !gameOver {
      //  var a = breakeTower(a: arr)
        if let a = breakeTower(a: arr) {
            print(a)
            arr = a
        } else {
            gameOver = true
        }
        player = player == 2 ? 1 : 2
    }
    return player
}

func breakeTower(a: Array<Int>) -> Array<Int>? {
    var newArr = a
    var hasValidTower = false
    for (index, m) in a.enumerated() {
        if m > 1 { hasValidTower = true
            newArr[index] = newTowelHeight(m: m)
            break
        }
    }
    return hasValidTower ? newArr : nil
}

func newTowelHeight(m: Int) -> Int {
    var m = m
    var num = m / 2
    while m % num > 0 {
        num -= 1
    }
    return num == 1 ? 1 : m - num
}


newTowelHeight(m:2)
//newTowelHeight(m: 3)
//newTowelHeight(m: 7)
//breakeTower(a: [6,6])
towerBreakers(n: 2, m: 6)
