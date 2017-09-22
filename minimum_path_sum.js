// Given a m x n grid filled with non-negative numbers, find a path from top left
// to bottom right which minimizes the sum of all numbers along its path.
// 
// Note: You can only move either down or right at any point in time.

var minPathSum = function(grid) {
  var rows = grid.length - 1;
  var cols = grid[0].length - 1;

  var cache = {'0,0': grid[0][0]};

  for (var row = 0; row <= rows; row++) {
    for (var col = 0; col <= cols; col++) {
      if (row === 0 && col === 0) continue;

      var left = cache[[row, col - 1]];
      var top  = cache[[row - 1, col]];
      var min  = 0;

      if (left >= 0 && top >= 0) {
        min = Math.min(left, top);
      } else if (left >= 0) {
        min = left;
      } else if (top >= 0) {
        min = top;
      }

      var sum = grid[row][col] + min;
      cache[[row, col]] = sum;
    }
  }

  return cache[[rows, cols]];
};

