# Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.
# 
# For example, given n = 3, a solution set is:
# 
# [
#   "((()))",
#   "(()())",
#   "(())()",
#   "()(())",
#   "()()()"
# ]

def generate_parenthesis(n)
  result = []
  backtrack(result, "(", 1, 1, n)
  result
end

def backtrack(result, solution, pair_count, open_count, n)
  if solution.length == n * 2
    result << solution
    return
  end

  if open_count == 0
    backtrack(result, solution + "(", pair_count + 1, open_count + 1, n)
  elsif pair_count >= n
    backtrack(result, solution + ")", pair_count, open_count - 1, n)
  else
    backtrack(result, solution + "(", pair_count + 1, open_count + 1, n)
    backtrack(result, solution + ")", pair_count, open_count - 1, n)
  end
end

