# @param {String} s
# @return {String[]}
def find_repeated_dna_sequences(s)
  res = Hash.new(0)
  i = 0
  while i <= s.length - 10
    res[s[i...i + 10]] += 1
    i += 1
  end
  res.select { |_, v| v > 1 }.keys
end

seq = "AAAAAAAAAAA"

p find_repeated_dna_sequences(seq)
