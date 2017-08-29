def three_sum(nums)
  result = []
  nums.sort!
  (0..(nums.length - 3)).each do |index|
    next if index > 0 && nums[index] == nums[index - 1]
    left, right = index + 1, nums.length - 1

    while left < right
      sum = nums[index] + nums[left] + nums[right]
      if sum < 0
        left += 1
      elsif sum > 0
        right -= 1
      else
        result << [nums[index], nums[left], nums[right]]

        while left < right && nums[left] == nums[left + 1]
          left += 1
        end

        while left < right && nums[right] == nums[right - 1]
          right -= 1
        end

        left += 1
        right -= 1
      end
    end
  end
  result
end
