def sample_stats(count)
  min = 0
  max = 0
  maxCount = [0, 0]
  numCount = 0
  sum = 0
  first = true
  median = false
  totalNum = count.sum()
  count.each_with_index do |el, idx|
    if el != 0
      if first
        min = idx
        first = false
      end
      max = idx
      sum += idx * el
      numCount += el
      if (!median && numCount > totalNum / 2)
        median = idx * 1.0
      elsif (!median && numCount == totalNum / 2)
        median = 1.0 * (idx + findNext(count, idx)) / 2
      end
      maxCount = [el, idx] if el > maxCount[0]
    end
  end
  return [min * 1.0, max * 1.0, sum / (numCount * 1.0), median, maxCount[1] * 1.0]
end

def findNext(array, index)
  array[index + 1..-1].each_with_index do |num, idx|
    return idx + index + 1 if num != 0
  end
  return false
end

p sample_stats(count)
