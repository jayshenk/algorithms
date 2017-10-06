=begin

Given a singly linked list, group all odd nodes together followed by the even nodes.
Please note here we are talking about the node number and not the value in the nodes.

You should try to do it in place. The program should run in O(1) space complexity and O(nodes) time complexity.

Note:
The relative order inside both the even and odd groups should remain as it was in the input.
The first node is considered odd, the second node even and so on ...

Example:
Given 1->2->3->4->5->NULL,
return 1->3->5->2->4->NULL.

==============

the first node is node 1

- 
return nil if head.nil?

even_start = head.next
end_of_odds = whatever L is after traversal (but stop before null) (last odd element)

1 > 2 > L3 > R4 > null

while L && L.next && R && R.next 
  L.next = R.next
  R.next = R.next.next
  L = L.next
  R = R.next
L.next = even_start

return head
=end

def odd_even_list(head)
  return nil if head.nil?
  even_start = head.next
  left = head
  right = head.next

  while left && left.next && right && right.next
    left.next = right.next
    right.next = right.next.next
    left = left.next
    right = right.next
  end

  left.next = even_start

  head
end

