# Given two integers n and k, return all possible combinations of k numbers out of 1 ... n.
# 
# For example,
# If n = 4 and k = 2, a solution is:
# 
# [
#   [2,4],
#   [3,4],
#   [2,3],
#   [1,2],
#   [1,3],
#   [1,4],
# ]

# Walid's solution:

def combine(n, k)
  result = []
  backtrack(result, [], n, k, 1) # start with 1 because we're iterating over 1..n
  result
end

def backtrack(result, solution, finish, solution_length, start)
  result.push(solution.clone) if solution.length == solution_length

  (start..finish).each do |num|
    solution.push(num)
    backtrack(result, solution, finish, solution_length, num + 1)
    solution.pop
  end
end

