//
//  q024-swap-nodes-in-pairs.swift
//  leetcode-swift
//  Source*   :  https://leetcode.com/problems/swap-nodes-in-pairs/
//  Category* :  LinkedList TwoPointers
//
//  Created by Tianyu Wang on 16/7/1.
//  Github    :  http://github.com/wty21cn
//  Website   :  http://wty.im
//  Linkedin  :  https://www.linkedin.com/in/wty21cn
//  Mail      :  mailto:wty21cn@gmail.com


import Foundation

struct q024 {
    
    class Solution {
        func swapPairs(head: ListNode?) -> ListNode? {
            
            var p: ListNode? = nil
            var i = head
            var n = head?.next
            let head = n != nil ? n : head
            
            while n != nil {
                i!.next = n!.next
                n!.next = i
                p?.next = n
                
                p = i
                i = i!.next
                n = i?.next
            }
            
            return head
            
        }
    }
    
    static func getSolution() -> Void {
        
        let head = LinkedListBuilder.buildLinkedListWithNodes([1,2,3,4,5,6,7,8,9])
        
        LinkedListPrinter.print(Solution().swapPairs(head)!)
    }
}