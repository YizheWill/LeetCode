def length_of_longest_substring(s)
  return 0 if s.length == 0
  indices = {}
  maxLen = 1
  s.each_char.with_index do |char, idx|
    if indices[char]
      maxLen = [idx - indices[char], maxLen].max
    end
    indices[char] = idx
  end
  return maxLen
end

p length_of_longest_substring('asdfkikkdjfds')
