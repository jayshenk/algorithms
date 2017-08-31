var searchRange = function(nums, target) {
  if (nums.length === 1 && nums[0] === target) {
    return [0, 0];
  }
  var left = 0;
  var right = nums.length - 1;
  var begin = binaryEdgeSearch(nums, left, right, target, -1);
  console.log(begin)
  var end = nums.length - 1 - binaryEdgeSearch(nums.reverse, left, right, target, -1);

  if (begin >= 0 && end >= 0) {
    return [begin, end];
  } else {
    return [-1, -1];
  }
};

var binaryEdgeSearch = function(nums, left, right, target, edgeIncrement) {
  if (left + 1 === right) {
    if (nums[left] === target) {
      return left;
    }
    if (nums[right] === target) {
      return right;
    }
    return null;
  }

  var mid = Math.floor(left + (right - left) / 2);

  if (nums[mid] === target) {
    if (nums[mid + edgeIncrement] != target) {
      return mid;
    } else {
      right = mid + edgeIncrement;
    }
  } else if (nums[mid] < target) {
    left = mid + 1;
  } else {
    right = mid - 1;
  } 

  binaryEdgeSearch(nums, left, right, target, edgeIncrement);
};

console.log(searchRange([5,7,7,8,8,10], 8));
