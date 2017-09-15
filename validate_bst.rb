require 'pry'
# Given a binary tree, determine if it is a valid binary search tree (BST).
# 
# Assume a BST is defined as follows:
# 
# The left subtree of a node contains only nodes with keys less than the node's key.
# The right subtree of a node contains only nodes with keys greater than the node's key.
# Both the left and right subtrees must also be binary search trees.
#
# -------
# solution from CtCI book
#
# Currently fails with [1, 1] input on leetcode

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def is_valid_bst(root)
  is_valid_bst_helper(root, nil, nil)
end

def is_valid_bst_helper(root, min, max)
  return true if root.nil?

  if min && root.val <= min || max && root.val > max
    return false
  end

  if !is_valid_bst_helper(root.left, min, root.val) ||
     !is_valid_bst_helper(root.right, root.val, max)
    return false
  end

  true
end

root = TreeNode.new(1)
a = TreeNode.new(1)
root.left = a

is_valid_bst(root)
