# Given a collection of integers that might contain duplicates, nums, return all possible subsets.
# 
# Note: The solution set must not contain duplicate subsets.
# 
# For example,
# If nums = [1,2,2], a solution is:
# 
# [
#   [2],
#   [1],
#   [1,2,2],
#   [2,2],
#   [1,2],
#   []
# ]

def subsets_with_dup(nums)
  result = []
  nums.sort!
  subsets_helper(nums, [], result, 0, {})
  result
end

def subsets_helper(nums, solution, result, start, solutions_used)
  if !solutions_used[solution]
    result << solution.clone
    solutions_used[solution] = 1
  end

  (start...nums.size).each do |idx|
    solution << nums[idx]
    subsets_helper(nums, solution, result, idx + 1, solutions_used)
    solution.pop
  end
end

