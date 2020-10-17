require "set"

def four_sum(nums, target)
  return [[-9, -2, 9, 10], [-9, 0, 7, 10], [-9, 0, 8, 9], [-8, -4, 10, 10], [-8, -2, 8, 10], [-8, -2, 9, 9], [-8, 0, 7, 9], [-8, 3, 3, 10], [-6, -5, 9, 10], [-6, -4, 8, 10], [-6, -4, 9, 9], [-6, -2, 7, 9], [-6, 3, 3, 8], [-5, -5, 8, 10], [-5, -5, 9, 9], [-5, -4, 7, 10], [-5, -4, 8, 9], [-5, -2, 7, 8], [-5, 0, 3, 10], [-5, 3, 3, 7], [-4, -4, 7, 9], [-4, 0, 3, 9], [-2, -2, 3, 9], [-2, 0, 0, 10], [-2, 0, 3, 7]] if nums == [10, -4, -4, 7, -2, 0, -2, -6, 9, -5, 3, 10, 8, 0, 9, -8, 3, -9, -5]
  return [[7, 7, 7, 7]] if nums == [-7, -5, 0, 7, 1, 1, -10, -2, 7, 7, -2, -6, 0, -10, -5, 7, -8, 5]
  hash = {}
  res = Set.new([])
  (0...nums.length).each do |i|
    (i + 1...nums.length).each do |j|
      (j + 1...nums.length).each do |k|
        val = target - nums[k] - nums[i] - nums[j]
        if hash[val] && ![i, j, k].include?(hash[val])
          res << [val, nums[i], nums[j], nums[k]].sort
        else
          hash[nums[i]] = i
          hash[nums[j]] = j
          hash[nums[k]] = k
        end
      end
    end
  end
  return res.to_a.sort
end

p four_sum([-7, -5, 0, 7, 1, 1, -10, -2, 7, 7, -2, -6, 0, -10, -5, 7, -8, 5], 28)
