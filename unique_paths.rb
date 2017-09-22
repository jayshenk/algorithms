# A robot is located at the top-left corner of a m x n grid (marked 'Start' in the diagram below).
# 
# The robot can only move either down or right at any point in time. The robot is trying to reach the bottom-right corner of the grid (marked 'Finish' in the diagram below).
# 
# How many possible unique paths are there?
# 
# Note: m and n will be at most 100.

def unique_paths(row, column)
  # set to 0 based row and column
  row -= 1
  column -= 1

  cache = { [0, 0] => 1 }

  (0..column).each do |c|
    (0..row).each do |r|
      next if r == 0 && c == 0
      left = cache[[r, c - 1]] || 0
      top = cache[[r - 1, c]] || 0
      sum = left + top
      cache[[r, c]] = sum
    end
  end

  cache[[row, column]]
end

