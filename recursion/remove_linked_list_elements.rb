def remove_elements(head, val)
  return nil if head.nil?
  tail = head.next

  if head.val == val
    remove_elements(tail, val)
  else
    prepend_head(remove_elements(tail, val), head)
  end
end

def prepend_head(node, head)
  head.next = node
  head
end
