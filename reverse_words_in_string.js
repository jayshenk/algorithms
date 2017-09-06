// Given an input string, reverse the string word by word.
// 
// For example,
// Given s = "the sky is blue",
// return "blue is sky the".
//
// initialize an empty result array
// 
// need one pointer to begin at end of string, traversing backwards and stop at first non-space character 
// 

var reverseWords = function(str) {
  return str.trim().split(/\s+/).reverse().join(' ');
};

