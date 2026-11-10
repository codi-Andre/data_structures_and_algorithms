package test_linked_list

import "../../src/linked_list"
import "core:log"
import "core:testing"
import "core:time"

@(test)
test_list_node :: proc(t: ^testing.T) {
	list: [4]linked_list.List_Node(int)
	dummy: ^linked_list.List_Node(int)

	for &node, i in list {
		node.val = i
		node.next = dummy
		dummy = &node
	}

	testing.set_fail_timeout(t, 5 * time.Second)

	testing.expect_value(t, list[0].val, 0)
	testing.expect_value(t, list[0].next, nil)

	testing.expect_value(t, list[1].val, 1)
	testing.expect_value(t, list[1].next, &list[0])

	testing.expect_value(t, list[2].val, 2)
	testing.expect_value(t, list[2].next, &list[1])

	testing.expect_value(t, list[3].val, 3)
	testing.expect_value(t, list[3].next, &list[2])
}

@(test)
test_reverse_linked_list :: proc(t: ^testing.T) {
	list: [4]linked_list.List_Node(int)
	dummy: ^linked_list.List_Node(int)

	for &node, i in list {
		node.val = i
		node.next = dummy
		dummy = &node
	}

	reversed_list := linked_list.reverse_list(&list[3])

	testing.set_fail_timeout(t, 5 * time.Second)

	testing.expect_value(t, list[3].val, 3)
	testing.expect_value(t, list[3].next, nil)

	testing.expect_value(t, list[2].val, 2)
	testing.expect_value(t, list[2].next, &list[3])

	testing.expect_value(t, list[1].val, 1)
	testing.expect_value(t, list[1].next, &list[2])

	testing.expect_value(t, list[0].val, 0)
	testing.expect_value(t, list[0].next, &list[1])
}
