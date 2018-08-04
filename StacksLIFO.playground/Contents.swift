//: Playground - noun: a place where people can play

import UIKit

class Node {
    let value: Int
    var next: Node?
    init(value: Int) {
        self.value = value
    }
}

class Stack {
    var top: Node?

    func push(_ value: Int) {
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
    }

    func pop() -> Int? {
        let currentTop = top
        top = top?.next
        return currentTop?.value
    }
}

let stack = Stack()
print("we are here")
stack.push(1)
stack.push(2)
stack.push(3)

let firstPop = stack.pop()
let secondPop = stack.pop()
let thridPop = stack.pop()
let finalPop = stack.pop()
/* last in first out lifo
 1 2 3
 3 2 1 nil
 3.next -> 2
 2.next -> 1
 
        next    top
 push   nil     1
 push   1       2
 push   2       3
 
        curent  top
 pop    3       2
 pop    2       1
 pop    1       nil
 pop    nil
 */
