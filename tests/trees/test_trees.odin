package test_trees

import "core:time"
import "core:log"
import "core:testing"
import "../../src/trees"
import vm "core:mem/virtual"

@(test)
test_construct_binary_tree_from_preorder_and_inorder_traversal :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	tree_arena: vm.Arena
	arena_allocator := vm.arena_allocator(&tree_arena)
	defer vm.arena_destroy(&tree_arena)

	root := trees.build_tree({1,2,3,4}, {2,1,3,4}, arena_allocator)

	testing.expect(t, root != nil, "Expect root to not be nil")
	testing.expect_value(t, root.val, 1)

	testing.expect(t, root.left != nil, "Expect root.left to not be nil")
	testing.expect_value(t, root.left.val, 2)

	testing.expect(t, root.left.left == nil, "Expect left.left to be nil")
	testing.expect(t, root.left.right == nil, "Expect left.right to be nil")

	testing.expect(t, root.right != nil, "Expect root.right to not be nil")
	testing.expect_value(t, root.right.val, 3)

	testing.expect(t, root.right.left == nil, "Expect right.left to be nil")

	testing.expect(t, root.right.right != nil, "Expect right.right to not be nil")
	testing.expect_value(t, root.right.right.val, 4)

	testing.expect(t, root.right.right.left == nil, "Expect node4.left to be nil")
	testing.expect(t, root.right.right.right == nil, "Expect node4.right to be nil")
}
