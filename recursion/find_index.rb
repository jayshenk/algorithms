# separate last element each time

def find_index(array, value)
  return array.length - 1 if array.last == value
  find_index(array[0..-2], value)
end

puts find_index([1, 4, 2, 8, 7], 4) == 1
puts find_index([1, 4, 2, 8, 7], 1) == 0
puts find_index([1, 4, 2, 8, 7], 7) == 4
puts find_index([1], 1) == 0
puts find_index([1, 2], 1) == 0
puts find_index([1, 2], 2) == 1
