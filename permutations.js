/*

  Given a collection of distinct numbers, return all possible permutations.

  For example,
  [1,2,3] have the following permutations:

[
  [1,2,3],
  [1,3,2],
  [2,1,3],
  [2,3,1],
  [3,1,2],
  [3,2,1]
]

*/

var permute = function(nums) {
  var result = [];
  permute_helper(nums, [], result);
  return result;
};

var permute_helper = function(nums, solution, result) {
  if (solution.length === nums.length) {
    result.push(solution.slice());
    return;
  }

  nums.forEach(function(num) {
    if (solution.indexOf(num) === -1) {
      solution.push(num);
      permute_helper(nums, solution, result);
      solution.pop();
    }
  });
};

console.log(permute([1,2,3]));
