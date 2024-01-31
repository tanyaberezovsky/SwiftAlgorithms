import Foundation


// Enter your code here
struct QueueTwoStucks {
    
    private var lifo = [Int]()
    private var fifo = [Int]()
    
    mutating func append(_ element: Int) {
        moveToLifo()
        lifo.append(element)
    }

    mutating func remove() {
        moveToFifo()
        fifo.popLast()
    }

    mutating func printFirstElem() {
        moveToFifo()
        print(fifo.last ?? "")
    }
    
    private mutating func moveToFifo() {
        guard fifo.isEmpty else { return }
        while let elem = lifo.popLast() {
            fifo.append(elem)
        }
    }

    private mutating func moveToLifo() {
        guard lifo.isEmpty else { return }
        while let elem = fifo.popLast() {
            lifo.append(elem)
        }
    }
}

var q = QueueTwoStucks()


q.append(42)
q.printFirstElem()
q.remove()
q.append(14)
q.append(28)
q.printFirstElem()
q.append(60)
q.append(78)
q.remove()
q.printFirstElem()
q.remove()
q.printFirstElem()
