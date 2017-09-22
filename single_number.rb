# Given an array of integers, every element appears twice except for one. Find that single one.
# 
# Bit manipulation approach:

def single_number(nums)
  mask = 0
  nums.each do |num|
    mask ^= num
  end
  mask
end

