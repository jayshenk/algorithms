require 'pry'
# Given an unsorted array of integers, find the length of longest increasing
# subsequence.
# 
# For example,
# Given [10, 9, 2, 5, 3, 7, 101, 18],
# The longest increasing subsequence is [2, 3, 7, 101], therefore the length is 4.
# Note that there may be more than one LIS combination, it is only necessary for
# you to return the length.
# 
# Your algorithm should run in O(n2) complexity.
# 
# Follow up: Could you improve it to O(n log n) time complexity?
#
# ===================================
#
# Leetcode Approach #3 Dynamic Programming:

def length_of_lis(nums)
  return 0 if nums.empty?
  dp = [1]
  max = 1

  (1...nums.length).each do |i|
    current_max = 0
    (0...i).each do |j|
      if nums[i] > nums[j]
        current_max = [current_max, dp[j]].max
      end
    end
    dp[i] = current_max + 1
    max = [max, dp[i]].max
  end

  max
end

puts length_of_lis([10,9,2,5,3,7,101,18])

