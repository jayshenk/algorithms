def insert(root, node)
  if root.nil?
    root = node
  else
    if root.val < node.val
      if root.right.nil?
        root.right = node
      else
        insert(root.right, node)
      end
    else
      if root.left.nil?
        root.left = node
      else
        insert(root.left, node)
      end
    end
  end
end

