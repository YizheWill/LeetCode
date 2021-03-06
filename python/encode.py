

class Codec(object):

    def encode(self, root):

        def encodeHelper(root, parent, index):
            if not root:
                return None
            node = TreeNode(root.val)
            if index+1 < len(parent.children):
                node.left = encodeHelper(parent.children[index+1], parent, index+1)
            if root.children:
                node.right = encodeHelper(root.children[0], root, 0)
            return node

        if not root:
            return None
        node = TreeNode(root.val)
        if root.children:
            node.right = encodeHelper(root.children[0], root, 0)
        return node

    def decode(self, data):

        def decodeHelper(root, parent):
            if not root:
                return
            children = []
            node = Node(root.val, children)
            decodeHelper(root.right, node)
            parent.children.append(node)
            decodeHelper(root.left, parent)

        if not data:
            return None
        children = []
        node = Node(data.val, children)
        decodeHelper(data.right, node)
        return node
