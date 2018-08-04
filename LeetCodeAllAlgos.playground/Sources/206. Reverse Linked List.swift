import Foundation

// * Definition for singly-linked list.
  public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init(_ val: Int) {
         self.val = val
         self.next = nil
     }
 }
 

//Input: 1->2->3->4->5->NULL
// start ->  1->2->3->4->5 <-end
// switch : start ->  5->2->3->4->1 <-end
// move: : start ->  2->3->4 <-end
//...
//Output: 5->4->3->2->1->NULL
//public func reverseList(_ head: ListNode?) -> ListNode? {
//    if head.next == nil { return head }
//    print(head.val)
//    return head
//}
