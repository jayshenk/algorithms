# Given an array of non-negative integers, you are initially positioned at the
# first index of the array.
# 
# Each element in the array represents your maximum jump length at that position.
# 
# Determine if you are able to reach the last index.
# 
# For example:
# A = [2,3,1,1,4], return true.
# 
# A = [3,2,1,0,4], return false.
#
# ================================
# leetcode Dynamic Programming Top-down approach;
# stack level too deep error on leetcode

def can_jump(nums)
  return true if !nums.include?(0)
  possible_jumps = Array.new(nums.length)
  possible_jumps[nums.length - 1] = true
  can_jump_helper(nums, 0, possible_jumps)
end

def can_jump_helper(nums, idx, possible_jumps)
  return possible_jumps[idx] if !possible_jumps[idx].nil?

  furthest_jump = [idx + nums[idx], nums.length - 1].min

  (idx + 1..furthest_jump).each do |index|
    if can_jump_helper(nums, index, possible_jumps)
      possible_jumps[idx] = true
      return true
    end
  end

  possible_jumps[idx] || possible_jumps[idx] = false
end

# iterative approach

def can_jump(nums)
  cache = [true]

  (0..nums.length - 1).each do |position|
    next unless cache[position]
    furthest_index_reachable = [nums[position] + position, nums.length - 1].min

    (position + 1..furthest_index_reachable).each do |index|
      cache[index] = true
    end
  end

  !!cache[nums.length - 1]
end

