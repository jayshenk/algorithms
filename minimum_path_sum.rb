# Given a m x n grid filled with non-negative numbers, find a path from top left
# to bottom right which minimizes the sum of all numbers along its path.
# 
# Note: You can only move either down or right at any point in time.

def min_path_sum(grid)
  row = grid.length - 1
  column = grid[0].length - 1
  result = min_path_helper(grid, row, column, {})
end

def min_path_helper(grid, row, column, cache)
  return grid[row][column] if row == 0 && column == 0
  return Float::INFINITY if row < 0 || column < 0

  vertical_path = cache[[row - 1, column]] || min_path_helper(grid, row - 1, column, cache)
  horizontal_path = cache[[row, column - 1]] || min_path_helper(grid, row, column - 1, cache)

  min = [vertical_path, horizontal_path].min
  cheapest_path = grid[row][column] + min
  cache[[row, column]] = cheapest_path

  return cheapest_path
end

