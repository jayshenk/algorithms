require 'pry'
# Given an array of integers sorted in ascending order, find the starting and ending position of a given target value.
# 
# Your algorithm's runtime complexity must be in the order of O(log n).
# 
# If the target is not found in the array, return [-1, -1].
# 
# For example,
# Given [5, 7, 7, 8, 8, 10] and target value 8,
# return [3, 4].
#
# binary search recursive helper for beginning of range
# another bsearch helper for end
# 
#

def search_range(nums, target)
  range_begin = find_beginning(nums, target, 0, nums.length - 1)
  range_end = find_ending(nums, target, 0, nums.length - 1)

  [range_begin, range_end]
end

def find_beginning(nums, target, left, right)
  if left + 1 >= right
    return left if nums[left] == target
    return right if nums[right] == target
    return -1
  end

  mid = left + (right - left) / 2

  if nums[mid] >= target
    right = mid
  else
    left = mid
  end

  find_beginning(nums, target, left, right)
end

def find_ending(nums, target, left, right)
  if left + 1 >= right
    return right if nums[right] == target
    return left if nums[left] == target
    return -1
  end

  mid = left + (right - left) / 2

  if nums[mid] <= target
    left = mid
  else
    right = mid
  end

  find_ending(nums, target, left, right)
end

puts search_range([5, 7, 7, 8, 8, 10], 8) == [3, 4]

