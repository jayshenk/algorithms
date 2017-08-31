def binary_search(array, left, right, target)
  if left + 1 >= right
    return left if array[left] == target
    return right if array[right] == target
    return -1
  end

  mid = left + (right - left) / 2

  if array[mid] < target
    binary_search(array, mid, right, target)
  else
    binary_search(array, left, mid, target)
  end
end

puts binary_search([0, 1, 2, 5, 7], 0, 4, 5) == 3
puts binary_search([0, 1, 2, 5, 7], 0, 4, 6) == -1
puts binary_search([0, 1, 2, 5, 7], 0, 4, 0) == 0
puts binary_search([0, 1], 0, 1, 1) == 1
puts binary_search([0], 0, 0, 0) == 0

