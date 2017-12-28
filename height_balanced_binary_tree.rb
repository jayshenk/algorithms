=begin

Given a binary tree, determine if it is height-balanced.

For this problem, a height-balanced binary tree is defined as a binary tree in
which the depth of the two subtrees of every node never differ by more than 1.

=end

def is_balanced(root)
  balanced = { balanced: true }
  balanced_helper(root, balanced)
  balanced[:balanced]
end

def balanced_helper(root, memo)
  return 0 if root.nil?

  left_depth = balanced_helper(root.left, memo)
  right_depth = balanced_helper(root.right, memo)

  if (left_depth - right_depth).abs > 1
    memo[:balanced] = false
  end

  [left_depth, right_depth].max
end
