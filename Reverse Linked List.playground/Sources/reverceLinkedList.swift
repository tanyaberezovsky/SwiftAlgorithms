//: Playground - noun: a place where people can play

import Foundation

public class Node {
    var value:Int
    var node: Node?
    public init(_ value:Int, node: Node?) {
        self.value = value
        self.node = node
    }
}


public func printLinkedList(head: Node?) {
    var currentNode = head
    var nextNode: Node?
    while currentNode != nil {
        print(" value = \(currentNode?.value ?? -1 )")
        nextNode = currentNode?.node
        currentNode = nextNode
    }
}


//1->2->3->nil
//prev = nil
//next 1->2->3->nil
//current 1->2->3->nil
//nil<-1 - current.next = prev
//next 2->3->nil
//nil<-1->2->3->nil
//nil<-1<-2->3->nil

public func reverceList(head: Node?) {
    print(reverceList)
    var tmpPrev: Node?
    var next: Node?
    var prev: Node?
    var current: Node? = head
    while current != nil {
        print("current \(current!.value)")
        next = current?.node
        print("next \(next?.value ?? -1)")
        print("prev \(prev?.value ?? -1)")
        tmpPrev = current
        print("tmpPrev \(tmpPrev!.value)")
        current!.node = prev
        print("current \(current!.value)")
        prev = tmpPrev
        print("new prev \(prev!.value)")
        current = next
        print("new current \(current?.value ?? -1)")
        
    }
}
