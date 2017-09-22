// You are climbing a stair case. It takes n steps to reach to the top.
// 
// Each time you can either climb 1 or 2 steps. In how many distinct ways can you
// climb to the top?
// 
// Note: Given n will be a positive integer.
//
// Iterative approach:

var climbStairs = function(n) {
  var cache = [1, 1];

  for (var i = 2; i <= n; i++) {
    cache[i] = cache[i - 1] + cache[i - 2];
  }

  return cache[n];
};

