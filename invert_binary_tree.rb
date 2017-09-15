# Invert a binary tree.
# 
#      4
#    /   \
#   2     7
#  / \   / \
# 1   3 6   9
#
# to
#
#      4
#    /   \
#   7     2
#  / \   / \
# 9   6 3   1
#
# ===================
#
# postorder traversal
#
# until both left and right are nil
# swap the left and right nodes

def invert_tree(root)
  return nil if root.nil?

  invert_tree(root.left)
  invert_tree(root.right)

  temp = root.left
  root.left = root.right
  root.right = temp

  root
end

