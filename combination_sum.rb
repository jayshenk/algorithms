=begin

Given a set of candidate numbers (C) (without duplicates) and a target number (T), find all unique combinations in C where the candidate numbers sums to T.

The same repeated number may be chosen from C unlimited number of times.

Note:
All numbers (including target) will be positive integers.
The solution set must not contain duplicate combinations.
For example, given candidate set [2, 3, 6, 7] and target 7,
A solution set is:
[
  [7],
  [2, 2, 3]
]

===========================

if solution (sum of candidates) equals target, add it to result

to prevent duplicate combinations, keep track of start index
  - start index can be the same or incremented
    - but when to increment?
      - when recursing, start at current index
  - finish is last index of candidates

keep track of current sum when recursing
  - do the adding in the recursive call

=end

def combination_sum(candidates, target)
  result = []
  backtrack(result, candidates, target, [], 0, 0)
  result
end

def backtrack(result, candidates, target, solution, solution_sum, start)
  return if solution_sum > target

  if solution_sum == target
    result << solution.clone
  else
    (start...candidates.size).each do |i|
      solution << candidates[i]
      backtrack(result, candidates, target, solution, solution_sum + candidates[i], i)
      solution.pop
    end
  end
end

