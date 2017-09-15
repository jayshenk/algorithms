def combination_sum2(candidates, target)
  result = []
  backtrack(result, [], candidates, target, 0)
  result
end

def backtrack(result, solution, candidates, target, start_idx)
  sum = solution.reduce(:+) || 0
  return if sum > target
  if sum == target
    result.push(solution.clone)
  elsif sum > target
    return
  end
  end

  (start_idx...candidates.size).each do |idx|
    solution.push(candidates[idx])
    backtrack(result, solution, candidates, target, idx + 1)
    solution.pop
  end
end

