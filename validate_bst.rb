# Given a binary tree, determine if it is a valid binary search tree (BST).
# 
# Assume a BST is defined as follows:
# 
# The left subtree of a node contains only nodes with keys less than the node's key.
# The right subtree of a node contains only nodes with keys greater than the node's key.
# Both the left and right subtrees must also be binary search trees.
#
# -------
# Inorder traversal solution using recursive helper
#
# Currently fails with [1, 1] input on leetcode

def is_valid_bst(root)
  is_valid_bst_recurse(root, nil)
end

def is_valid_bst_recurse(root, prev)
  if root
    if !is_valid_bst_recurse(root.left, prev)
      return false
    end

    if prev && root.val <= prev.val
      return false
    end

    prev = root

    return is_valid_bst_recurse(root.right, prev)
  end

  true
end

