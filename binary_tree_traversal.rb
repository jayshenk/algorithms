class Node
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
  end
end

def print_inorder(root)
  return nil if root.nil?
  print_inorder(root.left)
  puts root.val
  print_inorder(root.right)
end

def print_postorder(root)
  return nil if root.nil?
  print_postorder(root.left)
  print_postorder(root.right)
  puts root.val
end

def print_preorder(root)
  return nil if root.nil?
  puts root.val
  print_preorder(root.left)
  print_preorder(root.right)
end

root = Node.new(1)
root.left = Node.new(2)
root.right = Node.new(3)
root.left.left = Node.new(4)
root.left.right = Node.new(5)

print_inorder(root)   # 4 2 5 1 3
puts '==='
print_postorder(root) # 4 5 2 3 1
puts '==='
print_preorder(root)  # 1 2 4 5 3
