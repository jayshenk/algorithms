/*

Given a set of distinct integers, nums, return all possible subsets (the power set).

Note: The solution set must not contain duplicate subsets.

For example,
If nums = [1,2,3], a solution is:

[
  [3],
  [1],
  [2],
  [1,2,3],
  [1,3],
  [2,3],
  [1,2],
  []
]

*/

var subsets = function(nums) {
  var result = [];
  subsets_helper(nums, [], result, 0);
  return result;
};

var subsets_helper = function(nums, solution, result, start) {
  result.push(solution.slice());

  for (var i = start; i < nums.length; i++) {
    if (solution.indexOf(nums[i]) === -1) {
      solution.push(nums[i]);
      subsets_helper(nums, solution, result, i + 1);
      solution.pop();
    }
  }
};

