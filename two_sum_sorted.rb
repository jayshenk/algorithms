def two_sum(numbers, target)
  numbers.each_with_index do |num, index|
    complement = target - num
    complement_index = binary_search(numbers, complement)
    if complement_index
      return [index + 1, complement_index + 1]
    end
  end
end

def binary_search(array, value)
  left_index = 0
  right_index = array.length - 1

  while left_index <= right_index
    midpoint = (right_index - left_index) / 2 + left_index
    
    if array[midpoint] > value
      right_index = midpoint - 1
    elsif array[midpoint] < value
      left_index = midpoint + 1
    elsif array[midpoint] == value
      return midpoint
    end
  end

  nil
end
