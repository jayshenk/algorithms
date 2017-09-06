// Find the maximum number in an array of numbers. Return that number.
//
// left/right recursion

var max_number = function(nums) {
  if (nums.length === 1) { return nums[0]; }
  if (nums.length === 2) {
    return nums[0] > nums[1] ? nums[0] : nums[1];
  }

  var mid = Math.floor((nums.length - 1) / 2);
  var left_max = max_number(nums.slice(0, mid + 1));
  var right_max = max_number(nums.slice(mid + 1, nums.length));

  return left_max > right_max ? left_max : right_max;
};

console.log(max_number([1, 3, 2, 4]) === 4);
console.log(max_number([1, 3, 2, 4, 8, 10, -2]) === 10);
console.log(max_number([11, 1, 3, 2, 4, 8, 10, -2]) === 11);
console.log(max_number([11, 1, 3, 2, 4, 8, 11, 10, -2]) === 11);
console.log(max_number([1]) === 1);
console.log(max_number([1, -5]) === 1);
