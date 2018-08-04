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
    var first: Node?
    init() {
        
    }
    func push(_ value: Int) {
        
        
        if first != nil {
            let oldTop = top
            top = Node(value: value)
            oldTop?.next = top
        } else {
            top = Node(value: value)
            first = top
        }
    }

    func pop() -> Int? {
        let currentFirst = first
        first = currentFirst?.next
        return currentFirst?.value
    }
    
    func peak() -> Int{
        return top?.value
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
/* first in first out fifo
        1       2
        next ->
 first>  1        2          3 <top
        next ->  next ->    next -> nil

 nil 1 2 3
 1 2 3 nil
 
 
1) first.value = 1
 
2) first.next -> 2 = first.value = 2 and 2.next -> 3
 
    first   top
    nil     nil
    1       1
 
 
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
