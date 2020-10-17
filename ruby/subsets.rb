def subsets(array)
  res = []
  array.each_with_index do |el, i|
    res += combinations(el, array[0...i] + array[i + 1..-1])
  end
  res
end

def combinations(el, array)
  res = []
  (0...array.length).each do |i|
    res << array[0...i] + [el] + array[i..-1]
  end
  p res
  res
end

subsets([1, 2, 3])
