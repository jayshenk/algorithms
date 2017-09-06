# Given an array S of n integers, are there elements a, b, c in S such that
# a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.
# 
# Note: The solution set must not contain duplicate triplets.
# 
# For example, given array S = [-1, 0, 1, 2, -1, -4],
# 
# A solution set is:
# [
#   [-1, 0, 1],
#   [-1, -1, 2]
# ]

def three_sum(nums)
  result = []
  nums.sort!
  (0..(nums.length - 3)).each do |index|
    next if index > 0 && nums[index] == nums[index - 1]
    left, right = index + 1, nums.length - 1

    while left < right
      sum = nums[index] + nums[left] + nums[right]
      if sum < 0
        left += 1
      elsif sum > 0
        right -= 1
      else
        result << [nums[index], nums[left], nums[right]]

        while left < right && nums[left] == nums[left + 1]
          left += 1
        end

        while left < right && nums[right] == nums[right - 1]
          right -= 1
        end

        left += 1
        right -= 1
      end
    end
  end
  result
end
