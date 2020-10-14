def search(nums, target)
  idx = b_search(nums, target)
  idx ? idx : -1
end

def b_search(nums, target)
  return nil if nums.empty?
  mid = nums.length / 2
  return mid if nums[mid] == target
  left = nums[0...mid]
  right = nums[mid + 1..-1]
  if nums[mid] < target
    idx = b_search(right, target)
    idx && mid + 1 + idx
  else
    b_search(left, target)
  end
end
