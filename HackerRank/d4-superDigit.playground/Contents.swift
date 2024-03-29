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


import Foundation

public class Node {
  
    
    private(set) public var value: Int
    private(set) public var parent: Node?
    private(set) public var left: Node?
    private(set) public var right: Node?
    
    public init(_ value: Int) {
        self.value = value
    }
    
    public convenience init(array: [Int]) {
        precondition(array.count > 0)
        self.init(array.first!)
        for v in array.dropFirst() {
            insert(v)
        }
    }
    
    public func insert(_ value: Int) {
        if value < self.value {
            if let left = left {
                left.insert(value)
            } else {
                left = Node(value)
                left?.parent = self
            }
        } else {
            if let right = right {
                right.insert(value)
            } else {
                right = Node(value)
                right?.parent = self
            }
        }
    }
    
    public func search(_ value: Int) -> Node? {
        var node: Node? = self
        while case let n? = node {
            if value < n.value {
                node = n.left
            } else if value > n.value {
                node = n.right
            } else {
                return node
            }
        }
        return nil
    }
  
  public func printTree() {
    var node: Node? = self
    
    // print leftnode if leftnode!= null
    // print this node
    // print rightNode if rightNode != null
    
    if let leftNode = node?.left {
      leftNode.printTree()
    }
    
    print(node!.value)
    
    if let rightNode = node?.right {
      rightNode.printTree()
    }
    
    
  }
    
  public func findInOrderSuccessor(inputNode: Node) -> Node {
    var nodeMin = inputNode
    
    
    // print leftnode if leftnode!= null
    // print this node
    // print rightNode if rightNode != null
    
    if let leftNode = node?.left {
      leftNode.printTree()
    }
    
    print(node!.value)
    
    if let rightNode = node?.right {
      rightNode.printTree()
    }
    
  }
}

func findInOrderSuccessor(inputNode: Node) -> Node {
    // your code goes here
  return inputNode
}

var tree = Node(array: [20,9, 5, 12, 11, 14, 25])
tree.printTree()

//findInOrderSuccessor(inputNode: tree)

