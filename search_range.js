/*

Given an array of integers sorted in ascending order, find the starting and ending position of a given target value.

Your algorithm's runtime complexity must be in the order of O(log n).

If the target is not found in the array, return [-1, -1].

For example,
Given [5, 7, 7, 8, 8, 10] and target value 8,
return [3, 4].

*/

var searchRange = function(nums, target) {
  if (nums.length === 1 && nums[0] === target) {
    return [0, 0];
  }
  var begin = findBeginning(nums, target);
  var end = findEnding(nums, target);

  if (begin >= 0 && end >= 0) {
    return [begin, end];
  } else {
    return [-1, -1];
  }
};

function findBeginning(array, target) {
  var left = 0;
  var right = array.length - 1;
  while (left + 1 <  right) {
    var mid = Math.floor(left + (right - left) / 2);

    if (array[mid] === target) {
      if (array[mid - 1] != target) {
        return mid;
      } else {
        right = mid - 1;
      }
    } else if (array[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    } 
  }

  if (array[left] === target) {
    return left;
  }
  if (array[right] === target) {
    return right;
  }
}

function findEnding(array, target) {
  var left = 0;
  var right = array.length - 1;
  while (left + 1 <  right) {
    var mid = Math.floor(left + (right - left) / 2);

    if (array[mid] === target) {
      if (array[mid + 1] != target) {
        return mid;
      } else {
        left = mid + 1;
      }
    } else if (array[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    } 
  }

  if (array[right] === target) {
    return right;
  }
  if (array[left] === target) {
    return left;
  }
}
