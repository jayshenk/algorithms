# base case:
# - n is 2
  # - return x * x if 
#
# how to handle negative exponent?
#   1 / x ** n
#

def my_pow(x, n)
  return x if n == 1
  return x * x if n == 2
  return x / x if n == -2

  if n > 0
    x * my_pow(x, n - 1)
  else
    my_pow(x, n + 1)
  end
end

puts my_pow(2, 3) == 8
puts my_pow(34.00515, -3)

