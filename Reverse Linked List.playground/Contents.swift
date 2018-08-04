
import Foundation
 
var thridNode = Node(3, node: nil)
var secondNode = Node(2, node: thridNode)
var firstNode = Node(1, node: secondNode)

printLinkedList(head: firstNode)

reverceList(head: firstNode)
printLinkedList(head: thridNode)


