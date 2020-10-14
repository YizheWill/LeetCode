# def find_pairs(nums, k)
#    hash = {}
#     i = 0
#     len = nums.length
#     while i < len
#         j = i + 1
#         while (j < len)
#             if nums[i] - nums[j] == k || nums[j] - nums[i] == k
#                 hash[Set.new([nums[i], nums[j]])] = 1
#             end
#             j +=1
#         end
#         i +=1
#     end
#     hash.length
# end
# require "Set"

# def find_pairs(nums, k)
#   hash = {}
#   len = nums.sort!.length
#   nums.each_with_index do |n, i|
#     val = b_search(nums[i + 1...len], k + n)
#     if val
#       hash[Set.new([nums[i], nums[i + 1 + val]])] = 1
#     end
#   end
#   hash.length
# end

# def b_search(array, target)
#   return false if array.empty?
#   mid = array.length / 2
#   midval = array[mid]
#   if target < midval
#     return b_search(array[0...mid], target)
#   elsif target == midval
#     return mid
#   else
#     val = b_search(array[mid + 1..-1], target)
#     return false if !val
#     return mid + b_search(array[mid + 1..-1], target) + 1
#   end
# end

def find_pairs(nums, target)
  return false if nums.empty?
  hash = Hash.new(0)
  nums.each { |n| hash[n] += 1 }
  res = 0
  hash.each do |k, v|
    if target == 0
      res += 1 if hash[k] >= 2
    else
      res += 1 if hash.has_key?(k + target)
    end
  end
  res
end

p find_pairs([1, 3, 1, 5, 4], 0)
