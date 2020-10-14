# # @param {String} s
# # @return {String}
# def remove_duplicate_letters(s)
#   hash = ("a".."z").inject(Hash.new { |h, k| h[k] = [] }) { |a, e| a[e]; a }
#   s.each_char.with_index do |c, i|
#     hash[c] << i
#   end
#   hash = hash.select { |_, v| !v.empty? }
#   hash = hash.sort
#   res = {}
#   hash.each { |e| res[e.first] = e.last.first if e.last.length == 1 }
#   hash.reject! { |e| e.last.length == 1 }
#   (0...hash.length - 1).each do |i|
#     char = hash[i].first
#     if res.has_key?(char)
#       first = res[char]
#     else
#       first = hash[i].last.shift
#     end
#     res[char] = first
#     (hash[i + 1].last.reject! { |e| e < first }) if hash[i + 1].last.last > first
#   end
#   char = hash.last.first
#   i = hash.last.last.first
#   res[char] = i
#   # res += [hash.last.first, hash.last.last.last]
#   res = res.sort
#   res = res.sort_by(&:last)
#   res.inject("") { |a, e| a += e.first }
# end
#
def remove_duplicate_letters(s)
  seen = []
  hash = Hash.new(0)
  s.each_char.with_index do |c, i|
    if seen.include?(c)
      next
    else
      until seen.empty?
        if seen.last > c && s[i + 1..-1].include?(seen.last)
          seen.pop
        else
          break
        end
      end
      seen << c
    end
  end
  seen.join
end

p remove_duplicate_letters("leetcode")
