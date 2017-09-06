// You are given two arrays (without duplicates) nums1 and nums2 where nums1’s
// elements are subset of nums2. Find all the next greater numbers for nums1's
// elements in the corresponding places of nums2.
// 
// The Next Greater Number of a number x in nums1 is the first greater number to
// its right in nums2. If it does not exist, output -1 for this number.
// 
// Example 1:
// Input: nums1 = [4,1,2], nums2 = [1,3,4,2].
// Output: [-1,3,-1]
// Explanation:
//     For number 4 in the first array, you cannot find the next greater number for it in the second array, so output -1.
//     For number 1 in the first array, the next greater number for it in the second array is 3.
//     For number 2 in the first array, there is no next greater number for it in the second array, so output -1.
// Example 2:
// Input: nums1 = [2,4], nums2 = [1,2,3,4].
// Output: [3,-1]
// Explanation:
//     For number 2 in the first array, the next greater number for it in the second array is 3.
//     For number 4 in the first array, there is no next greater number for it in the second array, so output -1.
// Note:
// All elements in nums1 and nums2 are unique.
// The length of both nums1 and nums2 would not exceed 1000.
// ===============================================================
//
// initialize greater_numbers hash
// initialize a stack []
// initialize result []
// iterate through nums2
//   - if stack is empty or num is less than top of stack
//     - add num to stack
//   - while num is greater than top of stack
//     - greater_numbers[stack.pop] = num
// - for each num in findNums
//   - add greater_numbers[num] || -1 to result
// - return result

var nextGreaterElement = function(findNums, nums) {
  var greaterNumbers = {};
  var stack = [];
  var result = [];

  nums.forEach(function(num) {
    while (num > stack[stack.length - 1]) {
      greaterNumbers[stack.pop().toString()] = num;
    }
    stack.push(num);
  });

  findNums.forEach(function(num) {
    result.push(greaterNumbers[num.toString()] || -1)
  });

  return result;
};

// nextGreaterElement([4,1,2], [1,3,4,2]);
nextGreaterElement([2, 4], [1,2,3,4]);
