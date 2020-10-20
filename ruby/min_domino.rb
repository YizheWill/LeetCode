def min_domino_rotations(arr1, arr2)
  # hash = Hash.new() {Hash.new(0)}
  hash = Hash.new { |h, k| h[k] = {} }
  arr1.each_with_index do |el, idx|
    hash[el][idx] = ["a"]
  end
  arr2.each_with_index do |el, idx|
    if hash[el][idx]
      hash[el][idx] << "b"
    else
      hash[el][idx] = ["b"]
    end
  end
  hash.each do |k, v|
    if v.size == arr1.length
      return find_result(v)
    end
  end
  -1
end

def find_result(hash)
  counta = 0
  countb = 0
  p hash
  hash.each do |k, v|
    if v.length == 1
      if v[0] == "a"
        counta += 1
      else
        countb += 1
      end
    end
  end
  counta < countb ? counta : countb
end
