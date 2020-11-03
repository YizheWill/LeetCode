
 Definition for singly-linked list.
 class ListNode
     attr_accessor :val, :next
     def initialize(val = 0, _next = nil)
         @val = val
         @next = _next
     end
 end
 @param {ListNode} head
 @return {ListNode}
 def insertion_sort_list(head)
     res = []
     until !head
         res << head.val
         head = head.next
     end
     res.sort!
     head = ListNode.new(res.shift)
     tmp = head
     res.each do |val|
         tmp.next = ListNode.new(val)
         tmp = tmp.next
     end
     return head
 end

# def insertion_sort_list(head)
#     tmp = head.next
#     head.next = nil
#     until !tmp
#         insert_a_node(head, tmp)
#         tmp = tmp.next
#     end
#     return head
# end
#     
# def insert_a_node(head, new_node)
#     prev = nil
#     until !head
#         if head.val < new_node.val
#             prev = head
#             head = head.next
#         else
#             if !prev
#                 new_node.next = head
#             else
#                 prev.next = new_node
#                 new_node.next = head
#             end
#             return
#         end
#         head = head.next
#     end
# end
