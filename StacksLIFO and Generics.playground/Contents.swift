//: Playground - noun: a place where people can play

import UIKit

class Node<T> {
    let value: T
    var next: Node?
    init(value: T) {
        self.value = value
    }
}

class Stack<T> {
    var top: Node<T>?

    func push(_ value: T) {
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
    }

    func pop() -> T? {
        let currentTop = top
        top = top?.next
        return currentTop?.value
    }
}

let stack = Stack<Int>()
print("we are here")
stack.push(1)
stack.push(2)
stack.push(3)

let firstPop = stack.pop()
let secondPop = stack.pop()
let thridPop = stack.pop()
let finalPop = stack.pop()
