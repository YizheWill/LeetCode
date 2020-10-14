def find_it(n)
  return 1 if n == 0
  counter = 1
  k = n
  while k > 0
    counter <<= 1
    k >>= 1
  end
  counter - 1 - n
end

p find_it(5)
