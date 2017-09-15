def sum_numbers(root)
  sum_paths(root, 0)
end

def sum_paths(root, acc)
  return 0 if root.nil?

  acc = acc * 10 + root.val
  
  return acc if root.left.nil? && root.right.nil?

  sum_paths(root.left, acc) + sum_paths(root.right, acc)
end

