package trees

// Time complexity: O(n) | Space complexity: O(1)

build_tree :: proc(preorder, inorder: []int, allocator := context.allocator, loc := #caller_location) -> ^Tree_Node {
	node := &Tree_Node{}
	curr := node
	i, j, n := 0, 0, len(preorder)

	for i < n && j < n {
		curr.right = new(Tree_Node, allocator, loc)
		curr.right^ = {val = preorder[i], right = curr.right}
		curr = curr.right

		i += 1
		for i < n && curr.val != inorder[j] {
			curr.left = new(Tree_Node, allocator, loc)
			curr.left^ = {val = preorder[i], right = curr}
			curr = curr.left
			i += 1
		}

		j += 1
		for j < n && curr.right != nil && curr.right.val == inorder[j] {
			prev := curr.right
			curr.right = nil
			curr = prev
			j += 1
		}
	}
	return node.right
}
