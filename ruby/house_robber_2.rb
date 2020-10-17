# # @param {Integer[]} nums
# # @return {Integer}
# def build_tree(nums)
#   nodes = nums.map.with_index { |e, i| Node.new(e, i) }
#   # p nodes
#   i = 0
#   to_find = nodes[0..3]
#   until to_find.empty?
#     first = to_find.shift
#     first.children = find_children(first, nodes)
#     to_find.concat(first.children) if first.children
#   end
#   # p nodes
#   return nodes
# end

# def find_children(node, array_of_nodes)
#   array_of_nodes[node.index + 2..node.index + 3]
# end

# def rob(nums)
#   nodes = build_tree(nums)[0..3]
#   # p nodes
#   res = []
#   nodes.each do |node|
#     p node
#     sum = calculate_sum(node)
#     res += sum if sum
#   end
#   res
# end

# def calculate_sum(node)
#   # p "node is #{node}"
#   return [nil] if !node
#   return [node.val] if !node.children
#   res = []
#   node.children.each do |n|
#     sum = calculate_sum(n)
#     res << sum
#   end
#   res.delete(nil)
# end

# class Node
#   attr_accessor :children, :val, :index

#   def initialize(val, index = nil, children = nil)
#     @val = val
#     @index = index
#     @children = children
#   end
# end

# def rob(nums)
#   prev_max = 0
#   cur_max = 0
#   i = 0
#   while i < nums.length
#     temp = cur_max
#     cur_max = [prev_max + nums[i], cur_max].max
#     prev_max = temp
#     i += 1
#   end
#   cur_max
# end

# p rob([10000, 10000, 1, 100000000000, 1000000000, 1])
def rob(nums)
  return 0 if nums.empty?
  return nums.first if nums.size == 1
  n1 = nums[0...-1]
  n2 = nums[1..-1]
  prev_max = 0
  cur_max = 0
  i = 0
  while i < n1.length
    temp = cur_max
    cur_max = [prev_max + n1[i], cur_max].max
    prev_max = temp
    i += 1
  end
  cur_max1 = cur_max
  prev_max = 0
  cur_max = 0
  i = 0
  while i < n2.length
    temp = cur_max
    cur_max = [prev_max + n2[i], cur_max].max
    prev_max = temp
    i += 1
  end
  cur_max1 > cur_max ? cur_max1 : cur_max
end

p rob([1, 2])
