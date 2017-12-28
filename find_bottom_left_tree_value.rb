=begin

Given a binary tree, find the leftmost value in the last row of the tree.

Example 1:
Input:

    2
   / \
  1   3

Output:
1


-----
Example 2: 
Input:

        1
       / \
      2   3
     /   / \
    4   5   6
       /
      7

Output:
7

-------
Example 3:
Input:

        1
       / \
      2   3
     /   / \
    4   5   6
       /   /
      7   8

Example 4:
Input:

        1
       / \
      2   3
     /   / \
    4   5   6
     \     /
      7   8

Example 5:
Input:

        1

Note: You may assume the tree (i.e., the given root node) is not NULL.

============

return the node's value that is both the deepest and leftmost
leftmost means the bottom left node of tree when visualizing it.
leftmost may be the right child of a parent

edge case:
return nil if root.nil?
if only one node, return its value

algo:
level order traversal
return the value of the first node in the last level
queue for doing the traversal
result array []

each index of the result will hold a subarray of the values in that level

take the subarray at the last index, and return its first value

=end

def find_bottom_left_value(root)
  return nil if root.nil?
  result = []
  queue = [root]
  current_level = 0

  while queue.any?
    queue.size.times do
      node = queue.shift
      result[current_level] = [] if !result[current_level]
      result[current_level] << node.val
      queue << node.left if node.left
      queue << node.right if node.right
    end
    current_level += 1
  end

  # return first value of last subarray
  result.last.first
end

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end

p find_bottom_left_value(nil) == nil

node_1 = TreeNode.new(1)

p find_bottom_left_value(node_1) == 1

node_2 = TreeNode.new(2)
node_3 = TreeNode.new(3)
node_1.left = node_2
node_1.right = node_3

p find_bottom_left_value(node_1) == 2

node_4 = TreeNode.new(4)
node_3.right = node_4

p find_bottom_left_value(node_1) == 4


node_5 = TreeNode.new(5)
node_2.left = node_5

p find_bottom_left_value(node_1) == 5
