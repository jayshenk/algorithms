=begin
A peak element is an element that is greater than its neighbors.

Given an input array where num[i] ≠ num[i+1], find a peak element and return its index.

The array may contain multiple peaks, in that case return the index to any one of the peaks is fine.

You may imagine that num[-1] = num[n] = -∞.

For example, in array [1, 2, 3, 1], 3 is a peak element and your function should return the index number 2.
=end

def find_peak_element(nums)
  left = 0
  right = nums.length - 1

  while left <= right
    mid = (right - left) / 2 + left
    
    if mid != 0 && nums[mid] < nums[mid - 1]
      right = mid - 1
    elsif mid != nums.length - 1 && nums[mid] < nums[mid + 1]
      left = mid + 1
    else
      return mid
    end
  end
end
