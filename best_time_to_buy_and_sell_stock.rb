require 'pry'
=begin
Say you have an array for which the ith element is the price of a given stock on day i.

If you were only permitted to complete at most one transaction (ie, buy one and sell one share of the stock), design an algorithm to find the maximum profit.

Example 1:
Input: [7, 1, 5, 3, 6, 4]
Output: 5

max. difference = 6-1 = 5 (not 7-1 = 6, as selling price needs to be larger than buying price)
Example 2:
Input: [7, 6, 4, 3, 1]
Output: 0

In this case, no transaction is done, i.e. max profit = 0.
=end

# index = the day number
# value = price
#
# keep track of max difference, initialized as 0
#
# procedure:
# - anchor + runner
#
# - point to last index as current index
# - iterate from index 0 up to current index - 1
#   - at each index, check the difference between current and index
#   - if the difference is higher than the max, reassign the max to it
# - decrement current index and repeat until index 1 
#
# - return max difference
#
# brute force solution -- works but is O(N^2) and exceeds time limit:

def max_profit(prices)
  max = 0
  buy_idx = 0
  sell_idx = prices.length - 1

  while sell_idx > 0
    sell_price = prices[sell_idx]

    while buy_idx < sell_idx
      buy_price = prices[buy_idx]
      difference = sell_price - buy_price
      
      max = difference if difference > max
      buy_idx += 1
    end

    sell_idx -= 1
    buy_idx = 0
  end

  max
end

# O(N) solution from leetcode

def max_profit(prices)
  min_price = Float::INFINITY
  max_profit = 0

  prices.each do |price|
    if price < min_price
      min_price = price
    elsif price - min_price > max_profit
      max_profit = price - min_price
    end
  end

  max_profit
end

puts max_profit([7,1,5,3,6,4]) == 5

