/*

Given a positive integer num, write a function which returns True if num is a perfect square else False.

Note: Do not use any built-in library function such as sqrt.

Example 1:

Input: 16
Returns: True

Example 2:

Input: 14
Returns: False

*/

var isPerfectSquare = function(num) {
  var left = 0;
  var right = Math.ceil(num / 2);

  while (left <= right) {
    var mid = Math.floor(left + (right - left) / 2);
    var midSquared = mid * mid;

    if (midSquared === num) {
      return true;
    } else if (midSquared < num) {
      left = mid + 1;
    } else {
      right = mid - 1;
    } 
  }

  return false;
};

console.log(isPerfectSquare(16) === true);
console.log(isPerfectSquare(14) === false);
