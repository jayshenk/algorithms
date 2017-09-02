# Reverse a singly linked list.
#
# 1 <  2 < 3 -> nil  =>  3 -> 2 -> 1 -> nil
#
#  1 < 2  3
#
# nil < 1 
#
# prev 1
# current 2
# temp next 3
#
# need to initialize previous as nil since nodes don't store a reference to previous

def reverse_list(head)
  prev = nil
  current = head

  while current
    temp_next = current.next
    current.next = prev
    prev = current
    current = temp_next
  end

  prev
end
