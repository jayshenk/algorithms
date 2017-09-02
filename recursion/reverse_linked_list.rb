# Reverse a singly linked list.
#
# 1 -> 2 -> 3 -> nil  =>  3 -> 2 -> 1 -> nil
#
# given solution from leetcode:

def reverse_list(head)
  return head if head.nil? || head.next.nil?
  prev = reverse_list(head.next)
  head.next.next = head
  head.next = nil
  prev
end
