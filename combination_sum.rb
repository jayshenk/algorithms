# Given a set of candidate numbers (C) (without duplicates) and a target number (T),
# find all unique combinations in C where the candidate numbers sums to T.
# 
# The same repeated number may be chosen from C unlimited number of times.
# 
# Note:
# All numbers (including target) will be positive integers.
# The solution set must not contain duplicate combinations.
# For example, given candidate set [2, 3, 6, 7] and target 7, 
# A solution set is: 
# [
#   [7],
#   [2, 2, 3]
# ]

def combination_sum(candidates, target)
  result = []
  backtrack(result, [], candidates, target, 0)
  result
end

def backtrack(result, solution, candidates, target, start_idx)
  sum = solution.reduce(:+)
  if sum
    if sum == target
      result.push(solution.clone)
    elsif sum > target
      return
    end
  end

  (start_idx...candidates.size).each do |idx|
    solution.push(candidates[idx])
    backtrack(result, solution, candidates, target, idx)
    solution.pop
  end
end

