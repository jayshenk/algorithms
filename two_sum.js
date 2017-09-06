// Given an array of integers, return indices of the two numbers such that they add up to a specific target.
// You may assume that each input would have exactly one solution, and you may not use the same element twice.
// 
// Example:
// Given nums = [2, 7, 11, 15], target = 9,
// 
// Because nums[0] + nums[1] = 2 + 7 = 9,
// return [0, 1].
// 
// O(N^2) solution:

var twoSum = function(nums, target) {
  for (var i = 0; i < nums.length; i++) {
    for (var j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] === target) {
        return [i, j];
      }
    }
  }
};

// O(N) solution using hash table:

var twoSum = function(nums, target) {
  var complements = {};
  var complement;

  for (var i = 0; i < nums.length; i++) {
    complement = target - nums[i];
    if (complements.hasOwnProperty(complement.toString())) {
      return [complements[complement.toString()], i];
    } else {
      complements[nums[i].toString()] = i;
    }
  }
};

console.log(twoSum([2, 7, 11, 15], 9)); // [0, 1]
console.log(twoSum([3, 3], 6));         // [0, 1]
