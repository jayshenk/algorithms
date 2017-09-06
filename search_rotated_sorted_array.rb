# Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.
# 
# (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).
# 
# You are given a target value to search. If found in the array return its index, otherwise return -1.
# 
# You may assume no duplicate exists in the array.
#
# ====================
#
# procedure:
# - find index of minimum with binary search
# - now do two more binary search
#   - one to the left of pivot
#   - one including the pivot and to the right

def search(nums, target)
  return -1 if nums.empty?
  min_idx = find_min_idx(nums)
  find_idx(nums, target, 0, min_idx) ||
  find_idx(nums, target, min_idx, nums.length - 1) ||
  -1
end

def find_min_idx(nums)
  left = 0
  right = nums.length - 1

  while left + 1 < right
    mid = left + (right - left) / 2

    if nums[mid] > nums.last
      left = mid
    else
      right = mid
    end
  end

  nums[left] < nums[right] ? left : right
end

def find_idx(nums, target, left, right)
  while left + 1 < right
    mid = left + (right - left) / 2

    if nums[mid] > target
      right = mid
    else
      left = mid
    end
  end

  return left if nums[left] == target
  return right if nums[right] == target
end

puts search([4, 5, 6, 7, 0, 1, 2], 6) == 2
