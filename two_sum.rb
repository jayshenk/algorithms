=begin

Given an array of integers, return indices of the two numbers such that they add
up to a specific target.

You may assume that each input would have exactly one solution, and you may not
use the same element twice.

Example:
Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].

=======================

iterate through indices
use a hash with complement as key and value as index
if complement exists, return [its index, current idx]

=end

def two_sum(nums, target)
  complements = {}
  nums.each_with_index do |num, index|
    complement = target - num

    if complements[complement]
      return [complements[complement], index]
    else
      complements[num] = index
    end
  end
end

