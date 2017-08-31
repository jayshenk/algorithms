=begin

Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.

(i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).

Find the minimum element.

You may assume no duplicate exists in the array.

==================================================

- during binary search
  - if value at right is less than midpoint
    - we want right half
  - else if value at midpoint - 1 is less than midpoint
    - we want left half
  - else
    - return the value at midpoint

*** this solution is better than 91% on leetcode!

=end

def find_min(nums)
  left = 0
  right = nums.length - 1

  while left <= right
    mid = (right - left) / 2 + left
    
    if nums[mid] > nums[right]
      left = mid + 1
    elsif nums[mid] > nums[mid - 1]
      right = mid - 1
    else
      return nums[mid]
    end
  end
end

