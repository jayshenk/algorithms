# Given a set of distinct integers, nums, return all possible subsets.
# 
# Note: The solution set must not contain duplicate subsets.
# 
# For example,
# If nums = [1,2,3], a solution is:
# 
# [
#   [3],
#   [1],
#   [2],
#   [1,2,3],
#   [1,3],
#   [2,3],
#   [1,2],
#   []
# ]

def subsets(nums)
  result = []
  subsets_helper(nums, [], result, 0)
  result
end

def subsets_helper(nums, solution, result, start)
  result << solution.clone

  (start...nums.size).each do |idx|
    solution << nums[idx]
    subsets_helper(nums, solution, result, idx + 1)
    solution.pop
  end
end

