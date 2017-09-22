# Write a function that takes a string as input and returns the string reversed.
# 
# Example:
# Given s = "hello", return "olleh".
#
# ===========
#
# S: O(N)
#
# iterate from last index to first
# add char to result string

def reverse_string(s)
  result = ''
  i = s.length - 1

  i.downto(0).each do |idx|
    result << s[idx]
  end

  result
end

# S: O(1)
#
# two pointers
# left starts at 0
# right starts at length - 1
# while left < right
#   swap values

def reverse_string(s)
  left = 0
  right = s.length - 1

  while left < right
    s[left], s[right] = s[right], s[left]
    left += 1
    right -= 1
  end

  s
end

