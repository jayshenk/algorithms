=begin

Given two arrays, write a function to compute their intersection.

Example:
Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2].

=============================

[1, 1, 2, 2]
[1, 2, 2]

result [1, 2]

Note:
Each element in the result must be unique.
The result can be in any order.

seen:
{ 1: true, 2: true }

result:
checking if in seen {}
only add to result if value true
[2]
after adding to the result, set value to false

=end

def intersection(nums1, nums2)
  result = []
  seen = {}

  nums1.each do |num|
    seen[num] = true
  end

  nums2.each do |num|
    if seen[num]
      result << num
      seen[num] = false
    end
  end

  result
end

p intersection([1, 2, 2, 1], [2, 2]) == [2]
p intersection([], [2, 2]) == []
p intersection([1, 2, 2, 1], []) == []
p intersection([1, 2, 3, 4, 5], [4, 3, 2]) == [4, 3, 2]
p intersection([-2, 4, 1], [-2, -2]) == [-2]
p intersection([1, 2, 3], [4, 5, 6]) == []

