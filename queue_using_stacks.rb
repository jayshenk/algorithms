# Implement the following operations of a queue using stacks.
# 
# push(x) -- Push element x to the back of queue.
# pop() -- Removes the element from in front of queue.
# peek() -- Get the front element.
# empty() -- Return whether the queue is empty.
#
# Notes:
# You must use only standard operations of a stack -- which means only push to top,
# peek/pop from top, size, and is empty operations are valid.
# Depending on your language, stack may not be supported natively. You may simulate
# a stack by using a list or deque (double-ended queue), as long as you use only
# standard operations of a stack.
# You may assume that all operations are valid (for example, no pop or peek
# operations will be called on an empty queue).

class MyQueue
  attr_accessor :stack1, :stack2

    def initialize
      @stack1 = []
      @stack2 = []
    end


=begin
    Push element x to the back of queue.
    :type x: Integer
    :rtype: Void
=end
    def push(x)
      stack1 << x
    end


=begin
    Removes the element from in front of queue and returns that element.
    :rtype: Integer
=end
    def pop
      transfer_stacks if stack2.empty?
      stack2.pop
    end


=begin
    Get the front element.
    :rtype: Integer
=end
    def peek
      transfer_stacks if stack2.empty?
      stack2.last
    end


=begin
    Returns whether the queue is empty.
    :rtype: Boolean
=end
    def empty
      stack1.empty? && stack2.empty?
    end

    private

    def transfer_stacks
      stack1.size.times { stack2 << stack1.pop }
    end
end

# Your MyQueue object will be instantiated and called as such:
obj = MyQueue.new

puts obj.empty

obj.push(1)
obj.push(2)
obj.push(3)

puts obj.peek == 1
puts obj.pop == 1
