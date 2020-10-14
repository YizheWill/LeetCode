def buddy_strings(a, b)
  return false if a.length != b.length || a.length < 2
  if a == b
    return true if a.chars.uniq.length < a.length
    return false
  else
    return check_str(a, b)
  end
end

def check_str(a, b)
  counter = 0
  i = 0
  to_check = []
  while i < a.length
    if a[i] != b[i]
      counter += 1
      to_check << [a[i], b[i]]
    end
    return false if counter == 3
  end
  return false if counter == 1
  return true if to_check[0].reverse == to_check[1]
  return false
end
