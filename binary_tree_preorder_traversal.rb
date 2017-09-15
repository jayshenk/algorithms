# Given a binary tree, return the preorder traversal of its nodes' values.
# 
# For example:
# Given binary tree {1,#,2,3},
#    1
#     \
#      2
#     /
#    3
# return [1,2,3].
# 
# Note: Recursive solution is trivial, could you do it iteratively?
#
# ======
# 
# iterative solution:

def preorder_traversal(root)
  return [] if root.nil?
  result = []
  stack = [root]
  
  while stack.any?
    node = stack.pop
    result << node.val
    left, right = node.left, node.right
    stack << right if right
    stack << left if left
  end

  result
end

