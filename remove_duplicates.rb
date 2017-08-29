# https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/

def remove_duplicates(nums)
  return 0 if nums.length == 0
  left_index = 0
  right_index = 1

  while right_index < nums.length
    if nums[left_index] != nums[right_index]
      left_index += 1
      nums[left_index] = nums[right_index]
    end
    right_index += 1
  end

  left_index + 1
end
