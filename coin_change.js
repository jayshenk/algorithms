// You are given coins of different denominations and a total amount of money amount.
// Write a function to compute the fewest number of coins that you need to make up
// that amount. If that amount of money cannot be made up by any combination of the
// coins, return -1.
// 
// Example 1:
// coins = [1, 2, 5], amount = 11
// return 3 (11 = 5 + 5 + 1)
// 
// Example 2:
// coins = [2], amount = 3
// return -1.
// 
// Note:
// You may assume that you have an infinite number of each kind of coin.

var coinChange = function(coins, amount) {
  var max = amount + 1;
  var dp = [0];

  for (var idx = 1; idx <= amount; idx++) {
    dp.push(max);
  }

  for (var i = 1; i <= amount + 1; i++) {
    coins.forEach(function(coin) {
      if (i >= coin) {
        dp[i] = Math.min(dp[i], dp[i - coin] + 1);
      }
    });
  }

  return dp[amount] === amount + 1 ? -1 : dp[amount];
};

