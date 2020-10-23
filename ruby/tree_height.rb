# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
class TreeNode
  attr_accessor :parent
end

def min_depth(root)
  return 0 if !root
  root.parent = nil
  tree = [root]
  counter = 0
  until tree.empty?
    to_test = tree.shift
    return to_test if !to_test.left && !to_test.right
    if to_test.left
      to_test.left.parent = to_test
      tree << to_test.left
    end
    if to_test.right
      to_test.right.parent = to_test
      tree << to_test.right
    end
  end
  counter = 0
  while to_test.parent
    to_test = to_test.parent
    counter += 1
  end
  return counter
end
