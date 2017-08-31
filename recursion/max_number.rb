=begin

[1, 2, 4, 7, 3]
- compare 1 and 2
- 2 is max
- compare 2 and 4
- 4 is max
- compare 4 and 7
- 7 is max
- compare 7 and 3
- 7 is max

- base case is pointer is after last index

=end

# def max_number(array, pointer=0, max=0)
#   return max if pointer == array.size
# 
#   max = array[pointer] if array[pointer] > max
#   max_number(array, pointer + 1, max)
# end

# ============================================
#
# without pointer approach:

def max_number(array, max=0)
  return max if array.size == 0

  max = array.first if array.first > max
  max_number(array[1..-1], max)
end

puts max_number([1, 2, 4, 7, 3]) == 7
puts max_number([1, 8, 4, 7, 3, -2]) == 8
puts max_number([1]) == 1

