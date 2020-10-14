class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

# @param {TreeNode} root
# @param {Integer} val
# @return {TreeNode}
def insert_into_bst(root, val)
  return [] if root.empty?
  ret = root
  find_node_and_insert(root, val)
  return ret
end

def find_node_and_insert(root, val)
  if root.val == val
    return false
  elsif root.left == nil && val < root.val
    p "found one on the left, inserting"
    root.left = TreeNode.new(val)
    return true
  elsif root.right == nil && val > root.val
    p "found one on the right, inserting"
    root.right = TreeNode.new(val)
    return true
  elsif root.val < val
    find_node_and_insert(root.right, val)
  elsif root.val > val
    find_node_and_insert(root.left, val)
  end
end
