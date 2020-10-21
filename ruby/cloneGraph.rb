# Definition for a Node.
# class Node
#     attr_accessor :val, :neighbors
#     def initialize(val = 0, neighbors = nil)
#		  @val = val
#		  neighbors = [] if neighbors.nil?
#         @neighbors = neighbors
#     end
# end

# @param {Node} node
# @return {Node}


# def cloneGraph(node)
#   res = Node.new(node.val)
#   # to_return = [res]
#   build_tree = [res]
#   tree = [node]
#     set = Set.new
#   result_array = []
#   until tree.empty?
#     to_test = tree.shift
#     next if set.include?(to_test)
#     set << to_test
#     to_shift = to_test.neighbors
#     to_add = to_shift.map {|e| Node.new(e.val)}
#     prev = build_tree.shift
#     result_array << prev
#     prev.neighbors = to_add
#     p prev
#     build_tree.concat(prev.neighbors)
#     result_array.concat(prev.neighbors)
#     tree.concat(to_shift)
#   end
#   # return to_return
#     return result_array.first
# end
def cloneGraph(node)
  return if node.nil?
  stack = [node]
  visiteds = []
  clone = {}
      # Step 1, iterate over stack, pop the original node and check if visited.  
  while !stack.empty? do
      original_node = stack.pop
      visiteds.include?(original_node) ? next : visiteds.push(original_node)
      
      # Step 2: Create new node if doesn't exists
      if clone[original_node.val].nil?
          clone[original_node.val] = Node.new(original_node.val, [])
      end
      
      # Step 3: check the neighbors, create new node if doesn't exists, and push them.
      original_node.neighbors.each do |nodebor|
          if clone[nodebor.val].nil?
              clone[nodebor.val] = Node.new(nodebor.val, [])
          end
          
          clone[original_node.val].neighbors.push(clone[nodebor.val])
      end

      # Step 4: Push unvisiteds to stack
      unvisiteds = original_node.neighbors.select { |node| !visiteds.include?(node) }
      stack += unvisiteds
  end
  
  clone[node.val]
end
