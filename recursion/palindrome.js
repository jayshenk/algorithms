// write a program to tell if a word is a palindrome. write a version with
// recursion and one version with iteration.
//
// iterative version:
// - use two pointers, one at beginning of string and one at end
// - if they are not equal, return false
// - increment left, decrement right and repeat while left < right

var isPalindrome = function(string) {
  if (string.length < 2) { return true; }
  var left = 0;
  var right = string.length - 1;

  while (left < right) {
    if (string[left] !== string[right]) { return false; }
    left++;
    right--;
  }

  return true;
};

// recursive version:
// base case
//  - if string length is less than 2 return true
//  - if string[0] != string[string length - 1] return false
// - recursive call to string[1..string length - 2]

var isPalindrome = function(string) {
  var left = 0;
  var right = string.length - 1;

  if (string.length < 2) { return true; }
  if (string[left] !== string[right]) { return false; }

  return isPalindrome(string.slice(1, string.length - 1));
};

console.log(isPalindrome('hellolleh'));
console.log(isPalindrome('helloolleh'));
console.log(isPalindrome(''));
console.log(isPalindrome('a'));
console.log(isPalindrome('ab') === false);
console.log(isPalindrome('abcdef') === false);
