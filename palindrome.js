// Given a string, determine if it is a palindrome, considering only alphanumeric
// characters and ignoring cases.
// 
// For example,
// "A man, a plan, a canal: Panama" is a palindrome.
// "race a car" is not a palindrome.
// 
// Note:
// Have you consider that the string might be empty? This is a good question 
// to ask during an interview.
// 
// For the purpose of this problem, we define empty string as valid palindrome.
//
// ========================
//
// if string length < 2, return true
//
// Two pointers
//   left at beginning, right at end
//     increment left until it is at alphanumeric char
//     decrement right until it is at alphanumeric char
//   while left < right
//     return false if lowercase value at left != lowercase value at right
//     increment left until it is at alphanumeric char
//     decrement right until it is at alphanumeric char
//   return true

var isPalindrome = function(s) {
  if (s.length < 2) return true;
  var left = 0;
  var right = s.length - 1;

  while (!isAlphanumeric(s[left]) && left < right) {
    left++;
  }
  while (!isAlphanumeric(s[right]) && left < right) {
    right--;
  }

  while (left < right) {
    if (s[left].toLowerCase() !== s[right].toLowerCase()) {
      return false;
    }

    left++;
    right--;

    while (!isAlphanumeric(s[left])) {
      left++;
    }
    while (!isAlphanumeric(s[right])) {
      right--;
    }
  }

  return true;
};

var isAlphanumeric = function(s) {
  var charCode = s.charCodeAt(0);

  return charCode >= 48 && charCode <= 57 ||
         charCode >= 65 && charCode <= 90 ||
         charCode >= 97 && charCode <= 122;
};

