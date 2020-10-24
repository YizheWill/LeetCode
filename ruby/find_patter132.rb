# def find132pattern(nums)
#   return false if nums.size < 3
#   min = nums[0]
#   max = nums[0]
#   (1...nums.length - 1).each do |i|
#     next if nums[i] == nums[i + 1]
#     if nums[i] < nums[i + 1]
#       if nums[i] < nums[i - 1]
#         min = [nums[i], min].min
#       else
#         return true if (min + 1..max - 1).to_a & nums[i + 1..-1]
#       end
#     else
#       if nums[i] > nums[i - 1]
#         max = nums[i]
#         
#       end
#     end
#   end
#   return false
# end
#
def find132pattern(nums)
  return false if nums.size < 3
  (1...nums.length - 1).each do |i|
    if nums[i] > nums[i + 1]
      return true if nums[i + 1..-1].any? { |n| n > nums[0...i].min and n < nums[i] }
    end
  end
  return false
end
