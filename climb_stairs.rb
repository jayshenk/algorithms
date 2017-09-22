# You are climbing a stair case. It takes n steps to reach to the top.
# 
# Each time you can either climb 1 or 2 steps. In how many distinct ways can you
# climb to the top?
# 
# Note: Given n will be a positive integer.

def climb_stairs(n)
  climb_stairs_helper(n, 0, {})
end

def climb_stairs_helper(n, current_step, cache)
  return 1 if current_step == n - 1
  return 2 if current_step == n - 2
  return cache[current_step] if cache[current_step]

  sum = climb_stairs_helper(n, current_step + 1, cache) + climb_stairs_helper(n, current_step + 2, cache)
  cache[current_step] = sum
end

