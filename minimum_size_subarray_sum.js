var minSubArrayLen = function(s, nums) {
  var minLength = Infinity;

  for (var i = 0; i < nums.length - 1; i++) {
    if (nums[i] >= s) { return 1; }
    var sum = nums[i];
    var j = i + 1;
    var length = 1;

    while (sum < s && j < nums.length) {
      sum += nums[j];
      j++;
      length++;
    }

    if (sum >= s && length < minLength) { minLength = length; }
  }

  return minLength < Infinity ? minLength : 0;
};
