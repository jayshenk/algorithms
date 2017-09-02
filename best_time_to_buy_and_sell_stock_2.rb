# [7,1,5,3,6,4]
#
# valleys are points where surrounding elements are higher
#   - if first element, just second element has to be higher
#
# peaks are the points where surrounding elements are lower
#   - if last element, just preceding element has to be lower
#
# - keep track of total profit
#
# - find all valleys [1, 3, 4]
# - find all peaks [5, 6]
#
# - need to keep track of the order between valleys and peaks
#
# T: O(N), S: O(1) solution from leetcode:

def max_profit(prices)
  i = 0
  valley = prices.first
  peak = prices.first
  max_profit = 0

  while i < prices.length - 1
    while i < prices.length - 1 && prices[i] >= prices[i + 1]
      i += 1
    end
    valley = prices[i]

    while i < prices.length - 1 && prices[i] <= prices[i + 1]
      i += 1
    end
    peak = prices[i]

    max_profit = peak - valley
  end

  max_profit
end

