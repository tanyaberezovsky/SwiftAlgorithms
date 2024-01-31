import Foundation

public class Node {
    init(value: Int) {
        self.value = value
    }
    let value: Int
    var next: Node?
}
public class List {
    private(set) var head: Node?
    private(set) var tail: Node?
    
    func add(value: Int) {
        let newNode = Node(value: value)
        if let tail {
            tail.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
    }
    
    func printList() {
        var current = head
        while let node = current {
            print(node.value)
            current = node.next
        }
    }
    func printListRecursion(node: Node?) {
        guard let current = node else { return }
        print(current.value)
        printListRecursion(node: current.next)
    }
    
    
}

public func merge(head1: Node?, head2: Node?) -> List {
    var mergeList = List()
    var head1 = head1
    var head2 = head2
    
    while let node1 = head1, let node2 = head2 {
        if node1.value <= node2.value {
            head1 = node1.next
        } else {
            mergeList.add(value: node2.value)
            head2 = node2.next
        }
    }
    
    while let node1 = head1 {
        print("loop3 \(node1.value)")

        mergeList.add(value: node1.value)
        head1 = node1.next
    }
    while let node2 = head2 {
        print("loop4 \( node2.value)")

        mergeList.add(value: node2.value)
        head2 = node2.next
    }
    return mergeList
}
// 1, 2, 3, 4
// 9, 10
public func mergeTwoLists(_ head1: Node?, _ head2: Node?) -> Node? {
    var current1 = head1
    var current2 = head2

    let newHead = Node(value: 0)
    var newCurrent = newHead
    
    while var node1 = current1, var node2 = current2 {
       
        if node1.value < node2.value {
            newCurrent.next = node1
            current1 = node1.next
        } else {
            newCurrent.next = node2
            //newCurrent = node2
            current2 = node2.next
        }
        newCurrent = newCurrent.next!
    }
    newCurrent.next = current1 ?? current2
    
    return newHead.next
}

let list = List()
list.add(value: 2)
list.add(value: 3)
list.add(value: 7)
//list.printList()
//list.printListRecursion(node: list.head)

let list2 = List()
list2.add(value: 2)
list2.add(value: 3)
list2.add(value: 10)
list2.add(value: 12)

//let mergedList = merge(head1: list.head, head2: list2.head)
//print("\(mergedList == nil)")
//mergedList.printList()

let mergedHead = mergeTwoLists(list.head, list2.head)
print("\(mergedHead == nil)")
list.printListRecursion(node: mergedHead)

