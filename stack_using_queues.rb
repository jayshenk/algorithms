# Implement the following operations of a stack using queues.
# 
# push(x) -- Push element x onto stack.
# pop() -- Removes the element on top of the stack.
# top() -- Get the top element.
# empty() -- Return whether the stack is empty.
# Notes:
# You must use only standard operations of a queue -- which means only push to back,
# peek/pop from front, size, and is empty operations are valid.
# Depending on your language, queue may not be supported natively.
# You may simulate a queue by using a list or deque (double-ended queue),
# as long as you use only standard operations of a queue.
# You may assume that all operations are valid 
# (for example, no pop or top operations will be called on an empty stack).

class MyStack
  attr_accessor :queue1, :queue2

=begin
    Initialize your data structure here.
=end
  def initialize
    @queue1 = []
    @queue2 = []
  end


=begin
    Push element x onto stack.
    :type x: Integer
    :rtype: Void
=end
  def push(x)
    queue1.push(x)
  end


=begin
    Removes the element on top of the stack and returns that element.
    :rtype: Integer
=end
  def pop
    transfer_num = queue1.size - 1
    transfer_to_queue2(transfer_num)
    element = queue1.shift
    transfer_to_queue1(transfer_num)
    element
  end


=begin
    Get the top element.
    :rtype: Integer
=end
  def top
    transfer_to_queue2(queue1.size - 1)
    element = queue1.first
    queue2 << queue1.shift
    transfer_to_queue1(queue2.size)
    element
  end


=begin
    Returns whether the stack is empty.
    :rtype: Boolean
=end
  def empty
    queue1.empty?
  end

  private

  def transfer_to_queue2(num)
    num.times { queue2 << queue1.shift }
  end

  def transfer_to_queue1(num)
    num.times { queue1 << queue2.shift }
  end
end

# Your MyStack object will be instantiated and called as such:
# obj = MyStack.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.top()
# param_4 = obj.empty()
