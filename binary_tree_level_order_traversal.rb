# Given a binary tree, return the level order traversal of its nodes' values. (ie, from left to right, level by level).
# 
# For example:
# Given binary tree [3,9,20,null,null,15,7],
#     3
#    / \
#   9  20
#     /  \
#    15   7
# return its level order traversal as:
# [
#   [3],
#   [9,20],
#   [15,7]
# ]

def level_order(root)
  return [] if root.nil?

  result = []
  queue = [root]
  current_level = 0

  until queue.empty?
    queue.size.times do
      node = queue.shift
      result[current_level] = [] unless result[current_level]
      result[current_level] << node.val
      queue.push(node.left) if node.left
      queue.push(node.right) if node.right
    end
    current_level += 1
  end

  result
end

