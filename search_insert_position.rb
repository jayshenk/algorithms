=begin
https://leetcode.com/problems/search-insert-position/description/

Given a sorted array and a target value, return the index if the target is found.
If not, return the index where it would be if it were inserted in order.

You may assume no duplicates in the array.

Here are few examples.
[1,3,5,6], 5 → 2
[1,3,5,6], 2 → 1
[1,3,5,6], 7 → 4
[1,3,5,6], 0 → 0

==============================

O(log N)

=end

def search_insert(nums, target)
  left = 0
  right = nums.size - 1
  while left + 1 <  right 
    mid = left + (right - left) / 2
    if nums[mid] == target
      return mid
    elsif nums[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end

  if nums[left] == target
    left
  elsif nums[right] == target
    right
  else
    if nums[left] > target
      left
    elsif nums[right] < target
      right + 1
    else
      right
    end
  end 
end
