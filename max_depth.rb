=begin

Given a binary tree, find its maximum depth.

The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

=end

def max_depth(root)
  return 0 if root.nil?

  1 + [max_depth(root.left), max_depth(root.right)].max
end

