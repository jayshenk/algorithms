# You are given two non-empty linked lists representing two non-negative integers.
# The digits are stored in reverse order and each of their nodes contain a single digit.
# Add the two numbers and return it as a linked list.
# 
# You may assume the two numbers do not contain any leading zero, except the number 0 itself.
# 
# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8
#
# Input: (2 -> 4 -> 3) + (1 -> 1)
# Output: (3 -> 5 -> 3)
#
# we want to traverse both input nodes
# as we traverse, we sum the values of node and have that be the value of a new node in the output list
# if the sum is greater than 9 we need to carry the 1 to the next node in the result
#
# - initialize result head dummy
# - set current to result head dummy
# - set current1 and current2 to head1 and head2
# - initialize tens to 0
#
# - while current1 or current2 are not nil or tens is 1
#   - add the values at current1 and current 2 and tens
#     - after adding, set tens to 0
#   - if the sum is greater than 9
#     - set tens to 1
#   - set the current nodes next to a new node with value = sum % 10  
#   - current = current.next
#   - current1 = current1.next
#   - current2 = current2.next
#   - sum = 0
#
# - return result head dummy.next
#
# my solution beats 96% on leetcode!

def add_two_numbers(head1, head2)
  result_dummy = ListNode.new(nil)
  current, current1, current2 = result_dummy, head1, head2
  tens = 0

  while current1 && current2
    sum = current1.val + current2.val + tens
    tens = sum > 9 ? 1 : 0
    current.next = ListNode.new(sum % 10)
    current, current1, current2 = current.next, current1.next, current2.next
  end

  while current1
    sum = current1.val + tens
    current.next = ListNode.new(sum % 10)
    tens = sum > 9 ? 1 : 0
    current, current1 = current.next, current1.next
  end
 
  while current2
    sum = current2.val + tens
    current.next = ListNode.new(sum % 10)
    tens = sum > 9 ? 1 : 0
    current, current2 = current.next, current2.next
  end

  if tens == 1
    current.next = ListNode.new(1)
  end

  result_dummy.next
end

