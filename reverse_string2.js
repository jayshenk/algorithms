// Using pointers

var reverseString = function(s) {
  var left_index = 0;
  var right_index = s.length - 1;
  var result = s.split('');

  while (left_index < right_index) {
    var temp = result[left_index];
    result[left_index] = result[right_index];
    result[right_index] = temp;
    left_index++;
    right_index--;
  }

  return result.join('');
};
