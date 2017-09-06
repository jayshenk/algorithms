// Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
// 
// For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].
// 
// Note:
// You must do this in-place without making a copy of the array.
// Minimize the total number of operations.
//
// ===========================
//
// left/right pointers
//
// - left and right start at 0
// - right starts at left and moves until if finds non-zero
// - swap the values
// - left moves
// - continue until right has completed iterating through array
//
// [>0<, 1, 0, 3, 12]
// [>0, 1<, 0, 3, 12]
// [>1, 0<, 0, 3, 12]
// [1, >0, 0<, 3, 12]
// [1, >0, 0, 3<, 12]
// [1, >3, 0, 0<, 12]
// [1, 3, >0, 0<, 12]
// [1, 3, >0, 0, 12<]
// [1, 3, >12, 0, 0<]
//

var moveZeroes = function(nums) {
  var left = 0;
  var tmp;

  for (var right = 0; right < nums.length; right++) {
    if (nums[right] !== 0) {
      tmp = nums[left];
      nums[left] = nums[right];
      nums[right] = tmp;
      left++;
    }
  }
};

moveZeroes([0, 1, 0, 3, 12])
