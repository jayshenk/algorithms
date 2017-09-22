# Find the contiguous subarray within an array (containing at least one number) which has the largest sum.
# 
# For example, given the array [-2,1,-3,4,-1,2,1,-5,4],
# the contiguous subarray [4,-1,2,1] has the largest sum = 6.
# 
# return largest sum
#
# ====================================
#
# - find max subarray that ends at each index
# [-2,1,-3,4,-1,2,1,-5,4]
# max subarray at index 0 is -2
# max subarray at index 1 is 1
# max subarray at index 2 is 1
# max subarray at index 3 is 4
# 
# how to cache?
#   - by slice coordinates?

def max_sub_array(nums)
  dp = [nums.first]
  max = dp[0]

  (1...nums.length).each do |i|
    prev_max = dp[i - 1] > 0 ? dp[i - 1] : 0
    dp[i] = nums[i] + prev_max
    max = [max, dp[i]].max
  end

  max
end

