# separate last element each time
#
# tail call recursion

def find_index(array, value)
  return array.length - 1 if array.last == value
  find_index(array[0..-2], value)
end

# with recursive helper method:
#
# group solution:

def find_index(nums, target)
  index = recursive_find_index(nums, target, 0, nums.length - 1)
  index || -1
end

def recursive_find_index(nums, target, left, right)
  # base case is when left and right meet
  if left == right
    return left if nums[left] == target
    return
  end

  mid = left + (right - left) / 2
  recursive_find_index(nums, target, 0, mid) ||
  recursive_find_index(nums, target, mid + 1, right)
end

puts find_index([1, 4, 2, 8, 7], 4) == 1
puts find_index([1, 4, 2, 8, 7], 1) == 0
puts find_index([1, 4, 2, 8, 7], 7) == 4
puts find_index([1], 1) == 0
puts find_index([1, 2], 1) == 0
puts find_index([1, 2], 2) == 1
