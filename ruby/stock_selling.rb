def max_profit(k, prices)
  return 0 if prices.length < 2
  i = 0
  j = 0
  res = []
  while i < prices.length
    i = find_low(prices, i)
    if i == prices.length - 1
      break
    end
    # p "the i here is #{i}"
    j, sum = find_high(prices, i)
    res << sum
    if res.length > k
      res.sort!.shift
    end
    i = j
    # p "j here is #{j} "
    # p "i here is different #{i}"
  end
  res.sum
end

def find_low(array, s = 0)
  if s == 0
    p "s"
    return s if array[s] < array[s + 1]
  end
  while s < array.length - 1
    p "h"
    if array[s] <= array[s - 1] && array[s] < array[s + 1]
      return s
    end
    s += 1
  end
  return s
end

def find_high(array, i)
  s = i
  sum = 0
  while i < array.length - 1
    if array[i] > array[i - 1] && array[i] > array[i + 1]
      return [i, array[i] - array[s]]
    end
    i += 1
    # p "i is #{i}, array.length - 1 is #{array.length - 1}"
  end
  if i == array.length - 1
    return [i, sum + array[-1] - array[s]]
  else
    return "FALSE"
  end
end
