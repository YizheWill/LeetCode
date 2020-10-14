# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

# Encodes a tree to a single string.
#
# @param {TreeNode} root
# @return {string}
def serialize(root)
  return [] if root.nil?
  res = [root.val]
  tree = [root]
  until tree.empty?
    e = tree.first
    if !e
      res << "N"
    else (e.left || e.right)
      res.push(e.left ? e.left.val : "N")
      res.push(e.right ? e.right.val : "N")
      tree.push(e.left)
      tree.push(e.right)     end
    tree.shift
  end
  p res = res.join(";")
  return res
end

# Decodes your encoded data to tree.
#
# @param {string} data
# @return {TreeNode}
def deserialize(data)
  return [] if data.empty?
  data = data.split(";").map { |e| e == "N" ? nil : TreeNode.new(e.to_i) } # |e| e == "N" ? TreeNode.new(nil, nil, nil) : TreeNode.new(e.to_i, nil, nil) }
  ret = data.shift
  tree = [ret]
  until tree.empty? || data.empty?
    return ret if data.empty?
    el = tree.first
    if el
      el.left = data.shift
      tree.push(el.left)
      el.right = data.shift
      tree.push(el.right)
    end
    tree.shift
  end
  ret
end
