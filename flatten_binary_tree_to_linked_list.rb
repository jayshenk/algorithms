# Given a binary tree, flatten it to a linked list in-place.
# 
# For example,
# Given
# 
#          1
#         / \
#        2   5
#       / \   \
#      3   4   6
#
# The flattened tree should look like:
#
#    1
#     \
#      2
#       \
#        3
#         \
#          4
#           \
#            5
#             \
#              6
#
# =====================
# 
# - postorder traversal
# - pass hash to helper function that keeps track of previous node
 
def flatten(root)
  flatten_helper(root, { previous_node: nil })
end

def flatten_helper(root, storage)
  return nil if root.nil?

  left, right = root.left, root.right
  flatten_helper(right, storage)
  flatten_helper(left, storage)

  root.right = storage[:previous_node]
  root.left = nil
  storage[:previous_node] = root
  root
end

