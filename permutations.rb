# Given a collection of distinct numbers, return all possible permutations.
# 
# For example,
# [1,2,3] have the following permutations:
# [
#   [1,2,3],
#   [1,3,2],
#   [2,1,3],
#   [2,3,1],
#   [3,1,2],
#   [3,2,1]
# ]
#
# from Kevin:

def permute(nums)
  result = []
  permute_helper(nums, [], result)
  result
end

def permute_helper(nums, solution, result)
  # check solution is complete, if so, backtrack right away
  if solution.size == nums.size
    result << solution.clone        
  else
    nums.each do |num|
      # root processing
      next if solution.include?(num)
      solution << num
      
      # recursive preorder traversal 
      permute_helper(nums, solution, result)
      
      # state maintenance
      solution.pop
    end
  end
end

