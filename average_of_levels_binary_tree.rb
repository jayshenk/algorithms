# Given a non-empty binary tree, return the average value of the nodes on each level in the form of an array.
# 
# Example 1:
# Input:
#     3
#    / \
#   9  20
#     /  \
#    15   7
# Output: [3, 14.5, 11]
# Explanation:
# The average value of nodes on level 0 is 3,  on level 1 is 14.5, and on level 2 is 11. Hence return [3, 14.5, 11].

def average_of_levels(root)
  level_values(root).map do |level|
    level.reduce(:+) / level.size.to_f
  end
end

def level_values(root)
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

