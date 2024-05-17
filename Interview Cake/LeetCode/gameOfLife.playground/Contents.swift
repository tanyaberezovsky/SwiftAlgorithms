import Foundation

func startTheGame(world: [[Int]], itiractions: Int) {
    print("input")
    printWorld(world)
    var i = itiractions
    var newWorld = world
    
    while i > 0 {
        newWorld = createWorld(newWorld)
        printWorld(newWorld)
        i -= 1
    }
}

func printWorld(_ world: [[Int]]) {
    var line: String = ""
    print("")
    print("***************************************")
    print("")
    for row in world {
        for element in row {
            line += "\(element)"
        }
        print(line)
        line = ""
    }
}

/*
 cell 1 n < 2 = 0 Any live cell with fewer than two live neighbors dies, as if by underpopulation.
 n = 2,3 = 1 Any live cell with two or three live neighbors lives on to the next generation.
 cell 1 & n > 3 >0 Any live cell with more than three live neighbors dies, as if by overpopulation.
 cell 0 & n = 3 > 1 Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.
 */
func createWorld(_ oldworld: [[Int]]) -> [[Int]] {
    var world = oldworld//
    var neighbour = 0
    
    for i in stride(from: 0, to: world.count, by: 1) {
        for j in stride(from: 0, to: world[0].count, by: 1) {
            neighbour = liveNeighbours(world, i: i, j: j)//bug here I should pass the oldworld instead ***************
            if world[i][j] == 1 && (neighbour < 2 || neighbour > 3) {
                world[i][j] = 0
            } else if world[i][j] == 1 && (neighbour == 2 || neighbour == 3) {
                world[i][j] = 1
            } else if  world[i][j] == 0 && neighbour == 3 {
                world[i][j] = 1
            }
        }
    }
            
    return world
}

func liveNeighbours(_ world: [[Int]], i: Int, j: Int) -> Int {
    let mask = [(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 0), (1, 1)]
    return mask.reduce(0) { count, offset in
        let newI = i + offset.0
        let newJ = j + offset.1
        return newI >= 0 && newI < world.count && newJ >= 0 && newJ < world[0].count && world[newI][newJ] == 1 ? count + 1 : count
    }
}
func liveNeighbours(_ world: [[Int]], i: Int, j: Int) -> Int {
    let mask = [[-1,-1],[-1,0],[-1,1],[0,-1],[0,1],[1,-1],[1,0],[1,1]]
    var neighbours = 0
    var newI = 0
    var newJ = 0
    for row in mask {
        newI = i + row[0]
        newJ = j + row[1]
        if (newI >= 0 && newI < world.count) &&  (newJ >= 0 && newJ < world[0].count) {
            if world[newI][newJ] == 1 {
                neighbours += 1
            }
        }
    }
    return neighbours
}

let curentWorld = [[0,0,0,0,0,0],
                   [0,0,0,0,0,0],
                   [0,0,0,0,0,0],
                   [0,0,1,1,1,0],
                   [0,0,0,0,0,0],
                   [0,0,0,0,0,0]]
                    
startTheGame(world: curentWorld, itiractions: 100)
