def palindrome?(word, left=0)
  right = word.length - 1 - left

  if left < right
    word[left] == word[right] ? palindrome?(word, left + 1) : false
  else
    true
  end
end

puts palindrome?('ok') == false
puts palindrome?('oo') == true
puts palindrome?('lol') == true
puts palindrome?('lolo') == false
puts palindrome?('kayak') == true
puts palindrome?('abcdefghi') == false
puts palindrome?('abcdedcba') == true

