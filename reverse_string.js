var reverseString = function(s) {
  var reversed = '';
  for (var i = s.length - 1; i >= 0; i--) {
    reversed += s[i];
  }
  return reversed;
};
