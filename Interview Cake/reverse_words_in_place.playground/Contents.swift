import Foundation


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()

        for i in 0 ..< nums.count {
            if nums[i] < target {
                if let firstInd = dict[target - nums[i]] {
                    return [firstInd, i]
                }
                dict[nums[i]] = i
            }
        }
    return [0]
    }
func maxProfit(_ prices: [Int]) -> Int {
        prices.for
    }
//
//func reverseArray(str: String) {
//    
//    var arr = str.split(separator: " ")
//    arr.reverse()
//    print(arr)
//    
//}
//
//reverseArray(str: "cake pound steal")
//
//
//func reverseWordsInPlace(str: String) {
//    var str = str
//    let mid = str.count / 2 - 1
//    var end = str.count - 1
//    for i in 0 ... mid {
//        str.swapAt(i, end)
//        end -= 1
//    }
//    var start = 0
//    end = 0
//    
//    str.char
//    str.forEach { char in
//        if char == " " {
//            str.swapWord(start, end - 1)
//            start = end
//        }
//        end += 1
//        print(end)
//    }
//    
//    print(str)
//    
// 
//}
//
//
//extension String {
//    mutating func swapWord(_ index1: Int, _ index2: Int) {
//        let mid = index1 - ((index2 - index1) / 2) - 1
//        var end = index2
//        for i in index1 ... mid {
//            self.swapAt(i, end)
//            end -= 1
//        }
//    }
//    mutating func swapAt(_ index1: Int, _ index2: Int) {
//        var characters = Array(self)
//        characters.swapAt(index1, index2)
//        self = String(characters)
//    }
//}
//
//reverseWordsInPlace(str: "cake pound steal")
