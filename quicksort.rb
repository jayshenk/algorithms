# Quicksort solution from DS book

class SortableArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def partition!(left_pointer, right_pointer)
    # We always choose the right-most element as the pivot
    pivot_position = right_pointer
    pivot = array[pivot_position]

    # We start the right pointer immediately to the left of the pivot
    right_pointer -= 1

    loop do
      while array[left_pointer] < pivot do
        left_pointer += 1
      end

      while array[right_pointer] > pivot do
        right_pointer -= 1
      end

      break if left_pointer >= right_pointer
      swap(left_pointer, right_pointer)
    end

    # As a final step, we swap the left pointer with the pivot itself
    swap(left_pointer, pivot_position)

    left_pointer
  end

  def swap(pointer_1, pointer_2)
    array[pointer_1], array[pointer_2] = array[pointer_2], array[pointer_1]
  end

  def quicksort!(left_index, right_index)
    # base case: the subarray has 0 or 1 elements
    return if right_index - left_index <= 0

    # Partition the array and grab the position of the pivot
    pivot_position = partition!(left_index, right_index)

    # Recursively call this quicksort method on whatever is to the left of the pivot:
    quicksort!(left_index, pivot_position - 1)

    # Recursively call this quicksort method on whatever is to the left of the pivot:
    quicksort!(pivot_position + 1, right_index)
  end
end

array = [0, 5, 2, 1, 6, 3]
sortable_array = SortableArray.new(array)
sortable_array.quicksort!(0, array.length - 1)
p sortable_array.array

