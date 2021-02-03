def trim_bst(root, low, high)
  return root if !root
  return trim_bst(root.left, low, high) if root.val > high
  return trim_bst(root.right, low, high) if root.val < low
  root.left = trim_bst(root.left, low, high)
  root.right = trim_bst(root.right, low, high)
  return root
end
