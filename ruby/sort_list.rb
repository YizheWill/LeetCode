# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def sort_list(head)
  return head if !head || !head.next
  res = []
  proc = Proc.new { |a, b| a.value <=> b.value }
  until head.nil?
    res << head
    head = head.next
  end
  res = res.sort(&prc)
  return_node = res.first
  res.each_with_index do |e, i|
    e.next = res[i + 1]
  end
  return_node
end
