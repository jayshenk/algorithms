/*
Given an array of integers sorted in ascending order, find the starting and ending position of a given target value.

Your algorithm's runtime complexity must be in the order of O(log n).

If the target is not found in the array, return [-1, -1].

For example,
Given [5, 7, 7, 8, 8, 10] and target value 8,
return [3, 4].
*/

var searchRange = function(nums, target) {
  if (nums.length === 0) { return [-1, -1]; }
  if (nums.length === 1 && nums[0] === target) {
    return [0, 0];
  }
  var begin = findBeginning(nums, target, 0, nums.length - 1);
  var end = findEnding(nums, target, 0, nums.length - 1);

  return [begin, end];
};

function findBeginning(array, target, left, right) {
  if (left + 1 >= right) {
    if (array[left] === target) { return left; }
    if (array[right] === target) { return right; }
    return -1;
  }

  var mid = Math.floor(left + (right - left) / 2);

  if (array[mid] === target && array[mid - 1] !== target) {
    return mid;
  } else if (array[mid] < target) {
    return findBeginning(array, target, mid + 1, right);
  } else {
    return findBeginning(array, target, left, mid - 1);
  } 
}

function findEnding(array, target, left, right) {
  if (left + 1 >= right) {
    if (array[right] === target) { return right; }
    if (array[left] === target) { return left; }
    return -1;
  }

  var mid = Math.floor(left + (right - left) / 2);

  if (array[mid] === target && array[mid + 1] !== target) {
    return mid;
  } else if (array[mid] > target) {
    return findEnding(array, target, left, mid - 1);
  } else {
    return findEnding(array, target, mid + 1, right);
  } 
}

console.log(searchRange([0, 1, 3, 5, 8], 5)); // [3, 3]
console.log(searchRange([5,7,7,8,8,10], 8)); // [3, 4]
console.log(searchRange([], 0)); // [-1, -1]
console.log(searchRange([1], 0)); // [-1, -1]
