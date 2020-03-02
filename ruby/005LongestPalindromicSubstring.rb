def longest_palindrome(s)
    return s if s.length <= 1
    res = [s[0], 1]
    s.chars.each_index do |i|
        l1 = palindrome_len(s, i, i)
        l2 = palindrome_len(s, i, i + 1)
        l = l1 > l2 ? l1 : l2
        res = [s[(i-(l-1)/2)..(i+l/2)], l] if l > res[1]
    end
    res[0]
end

def palindrome_len(s, l, r)
    while l >= 0 && r < s.length && s[l] == s[r]
        l -= 1
        r += 1
    end
    r - 1 - l
end
p longest_palindrome("ababd")
p longest_palindrome("abba")
p longest_palindrome("bb")
p longest_palindrome("b")
p longest_palindrome("")
