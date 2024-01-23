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
        
    if let leftNode = node?.left {
      leftNode.printTree()
    }
    
    print(node!.value)
    
    if let rightNode = node?.right {
      rightNode.printTree()
    }
  }
    
    public func findInOrderSuccessor(inputNode: Node) {
      var node: Node? = self
          
      if let leftNode = node?.left {
        leftNode.printTree()
      }
      
      print(node!.value)
      
      if let rightNode = node?.right {
        rightNode.printTree()
      }
    }
}

func findInOrderSuccessor(_ inputNode: Node) -> Node? {
    // Case 1: If the right subtree is not empty, the successor is the node with the
    // smallest value in the right subtree (leftmost node in the right subtree)
    if let rightSubtree = inputNode.right {
        var successor = rightSubtree
        while let left = successor.left {
            successor = left
        }
        return successor
    }

    // Case 2: If the right subtree is empty, the successor is the lowest ancestor
    // whose left subtree contains inputNode
    var ancestor = inputNode.parent
    while ancestor != nil && ancestor!.right === inputNode {
        inputNode = ancestor!
        ancestor = ancestor!.parent
    }
    return ancestor
}


var tree = Node(array: [20,9, 5, 12, 11, 14, 25])
tree.printTree()

//findInOrderSuccessor(inputNode: tree)

