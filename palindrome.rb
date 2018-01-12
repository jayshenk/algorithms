def is_palindrome(s)
  chars = s.downcase.scan(/[a-z0-9]/)
  left_index = 0
  right_index = chars.length - 1

  while left_index < right_index do
    return false if chars[left_index] != chars[right_index]
    left_index += 1
    right_index -= 1
  end

  true
end

p is_palindrome('A man, a plan, a canal: Panama')
p is_palindrome('')
p is_palindrome('a.')

# Alternate solution

def is_palindrome(s)
  return true if s.length < 2

  left = 0
  right = s.length - 1

  while !alphanumeric?(s[left])
    left += 1
  end

  while !alphanumeric?(s[right])
    right -= 1
  end

  while left < right
    return false if s[left].downcase != s[right].downcase

    left += 1
    right -= 1

    while !alphanumeric?(s[left])
      left += 1
    end

    while !alphanumeric?(s[right])
      right -= 1
    end
  end

  true
end

def alphanumeric?(char)
  !!char.match(/[a-zA-Z0-9]/)
end

