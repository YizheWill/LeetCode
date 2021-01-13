def ladder_length(begin_word, end_word, word_list)
  existing = [begin_word]
end

def find_ajacent_words(existing, word, word_list)
  word_list.select { |w| (w.split('') & word.split('')).length == word.length - 1 && !existing.include?(w) }
end
