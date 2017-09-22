=begin

Given a sorted array, remove the duplicates in place such that each element
appear only once and return the new length.

Do not allocate extra space for another array, you must do this in place with
constant memory.

For example,
Given input array nums = [1,1,2],

Your function should return length = 2, with the first two elements of nums being
1 and 2 respectively. It doesn't matter what you leave beyond the new length.

=======================

remove duplicates in place
return new length
you can have elements beyond the new length

two pointers

=end

def remove_duplicates(nums)
  return 0 if nums.empty?

  left = 0
  right = 1

  while right < nums.size
    if nums[left] != nums[right]
      left += 1
      nums[left] = nums[right]
    end
    right += 1
  end

  left + 1
end

