// Given a sorted array and a target value, return the index if the target is found.
// If not, return the index where it would be if it were inserted in order.
// 
// You may assume no duplicates in the array.
// 
// Here are few examples.
// [1,3,5,6], 5 → 2
// [1,3,5,6], 2 → 1
// [1,3,5,6], 7 → 4
// [1,3,5,6], 0 → 0
//
// ========================
//
// do a binary search
// when left + 1 == right
//  - return left index if value
//  - return right index if value
//  - if target < left, return left
//  - else return left + 1
//
//  if array is empty, return 0
//

var searchInsert = function(nums, target) {
  if (!nums.length) { return 0; }
  var left = 0;
  var right = nums.length - 1;
  var mid;

  while (left + 1 < right) {
    mid = left + Math.floor((right - left) / 2);

    if (nums[mid] > target) {
      right = mid;
    } else {
      left = mid;
    }
  }

  if (nums[left] === target) { return left; }
  if (nums[right] === target) { return right; }
  if (target < nums[left]) {
    return left;
  } else if (target < nums[right]) {
    return right;
  } else {
    return right + 1;
  }
};

