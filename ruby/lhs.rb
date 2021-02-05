# https://leetcode.com/explore/challenge/card/february-leetcoding-challenge-2021/584/week-1-february-1st-february-7th/3628/

def find_lhs(nums)
  hash = Hash.new(0)
  max = 0
  nums.each { |e| hash[e] += 1 }
  hash.each do |k, v|
    v1 = h[k - 1]
    v2 = h[k + 1]
    next if v1 == 0 || v2 == 0
    if v1 >= v2
      max = v + v1 if max < v + v1
    else
      max = v + v2 if max < v + v2
    end
  end
  return max
end
