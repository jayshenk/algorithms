def binary_search(array, target)
  left = 0
  right = array.size - 1

  while left + 1 < right
    mid = left + (right - left) / 2

    if array[mid] == target
      return mid
    elsif array[mid] > target
      right = mid
    else
      left = mid
    end
  end

  return left if array[left] == target
  return right if array[right] == target
end

