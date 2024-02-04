import Foundation

class TreeNode {
    var value: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(value: Int) {
        self.value = value
    }
    
    func appendNode(value: Int) {
        // Traverse the tree to find the appropriate insertion point
        var currentNode = self
        while true {
            if value < currentNode.value {
                if let left = currentNode.left {
                    currentNode = left
                } else {
                    currentNode.left = TreeNode(value: value)
                    return
                }
            } else {
                if let right = currentNode.right {
                    currentNode = right
                } else {
                    currentNode.right = TreeNode(value: value)
                    return
                }
            }
        }
    }
    
    func printBreadth() {
        let root = self
        var q = [TreeNode]()//FIFO
        q.append(root)
        
        while !q.isEmpty {
            var node = q.removeFirst()
            print(node.value)
            if let left = node.left {
                q.append(left)
            }
            
            if let right = node.right {
                q.append(right)
            }
        }
        
    }
    
    func printPreOrder(node: TreeNode?) {
        guard let node else { return }
        print(node.value)
        printPreOrder(node: node.left)
        printPreOrder(node: node.right)
    }
    func printInOrder(node: TreeNode?) {
        if node == nil { return }
        printPreOrder(node: node?.left)
        print(node?.value)
        printPreOrder(node: node?.right)
    }
    func printPostOrder(node: TreeNode?) {
        if node == nil { return }
        printPreOrder(node: node?.left)
        printPreOrder(node: node?.right)
        print(node?.value)
}

}
let tree = TreeNode(value: 5)
tree.appendNode(value: 15)
tree.appendNode(value: 3)
tree.appendNode(value: 2)
tree.appendNode(value: 4)
tree.appendNode(value: 16)

//                        5
//                    3       15
//                2      4        16
tree.printBreadth()

tree.printPreOrder(node: tree)
print("*********")
tree.printInOrder(node: tree)
print("*********")
tree.printPostOrder(node: tree)
