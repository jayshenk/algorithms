# Given a collection of numbers that might contain duplicates, return all possible unique permutations.
# 
# For example,
# [1,1,2] have the following unique permutations:
# [
#   [1,1,2],
#   [1,2,1],
#   [2,1,1]
# ]

def permute_unique(nums)
  result = []
  permute_helper(nums, [], result, {}, {})
  result
end

def permute_helper(nums, solution, result, indices_used, solutions_used)
  if solution.size == nums.size && !solutions_used[solution]
    result << solution.clone        
    solutions_used[solution] = 1
  else
    nums.each_with_index do |num, idx|
      next if indices_used[idx]

      solution << num
      indices_used[idx] = 1
      permute_helper(nums, solution, result, indices_used, solutions_used)
      
      indices_used.delete(idx)
      solution.pop
    end
  end
end

