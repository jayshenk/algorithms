require 'pry'

=begin

Remove all elements from a linked list of integers that have value val.

Example
Given: 1 --> 2 --> 6 --> 3 --> 4 --> 5 --> 6, val = 6
Return: 1 --> 2 --> 3 --> 4 --> 5

=============================================

=end

class ListNode
  attr_accessor :val, :next
  def initialize(val)
      @val = val
      @next = nil
  end
end

def remove_elements(head, val)
  return nil if head.nil?

  while head.val == val
    return nil if !head.next
    head = head.next
  end

  current = head

  while current && current.next do
    runner = current.next
    while runner && runner.val == val
      runner = runner.next || nil
    end

    current.next = runner
    current = current.next
  end
  head
end

# solution from leetcode:

def remove_elements(head, val)
  dummy_head = ListNode.new(nil)
  dummy_head.next = head

  current = dummy_head

  while current != nil && current.next != nil do
    if current.next.val == val
      current.next = current.next.next
    else
      current = current.next
    end
  end

  dummy_head.next
end

a = ListNode.new(1)
b = ListNode.new(2)
c = ListNode.new(6)
d = ListNode.new(3)
a.next = b
b.next = c
c.next = d

remove_elements(a, 6)
