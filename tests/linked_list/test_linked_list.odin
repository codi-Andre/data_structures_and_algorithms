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
test_build_linked_list :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	list := linked_list.build_linked_list({0, 1, 2, 3})
	defer {
		for node in list {
			free(node)
		}
		delete(list)
	}

	matches := 0
	head := list[0]
	for head != nil {
		if head.val == list[matches].val && head.next == list[matches].next {
			matches += 1
		}
		head = head.next
	}
	testing.expect_value(t, len(list), 4)
	testing.expect_value(t, matches, 4)
}

@(test)
test_reverse_linked_list :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	list := linked_list.build_linked_list({0, 1, 2, 3})
	defer {
		for node in list {
			free(node)
		}
		delete(list)
	}

	testing.expect_value(t, list[0].next, list[1])
	testing.expect_value(t, list[1].next, list[2])
	testing.expect_value(t, list[2].next, list[3])
	testing.expect_value(t, list[3].next, nil)

	reversed_list := linked_list.reverse_list(list[0])

	testing.expect_value(t, list[3].next, list[2])
	testing.expect_value(t, list[2].next, list[1])
	testing.expect_value(t, list[1].next, list[0])
	testing.expect_value(t, list[0].next, nil)
}

@(test)
test_merge_two_sorted_linked_lists :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	nodes := [dynamic; 6]linked_list.List_Node(int) {
		{1, nil},
		{1, nil},
		{2, nil},
		{3, nil},
		{4, nil},
		{5, nil},
	}
	list1: ^linked_list.List_Node(int)
	list2: ^linked_list.List_Node(int)

	#reverse for &node, i in nodes {
		if i % 2 == 0 {
			node.next = list1
			list1 = &node
		} else {
			node.next = list2
			list2 = &node
		}
	}

	matches := 0
	head := linked_list.merge_two_sorted_linked_lists(list1, list2)
	for head != nil {
		if head.val == nodes[matches].val && head.next == nodes[matches].next {
			matches += 1
		}
		head = head.next
	}
	testing.expect_value(t, matches, len(nodes))

	clear(&nodes)
	nodes = {{1, nil}, {2, nil}}
	list1 = nil
	list2 = &nodes[0]
	list2.next = &nodes[1]

	matches = 0
	head = linked_list.merge_two_sorted_linked_lists(list1, list2)
	for head != nil {
		if head.val == nodes[matches].val && head.next == nodes[matches].next {
			matches += 1
		}
		head = head.next
	}
	testing.expect_value(t, matches, len(nodes))
}

@(test)
test_linked_list_cycle_detection :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	list1 := linked_list.build_linked_list({1, 2, 3, 4})
	list2 := linked_list.build_linked_list({1, 2})
	defer {
		for node in list1 {
			free(node)
		}
		delete(list1)
		for node in list2 {
			free(node)
		}
		delete(list2)
	}
	list1[3].next = list1[1]

	testing.expect(t, linked_list.has_cycle(list1[0]) == true, "Expect linked list to have cycle")
	testing.expect(
		t,
		linked_list.has_cycle(list2[0]) == false,
		"Expect linked list to not have cycle",
	)
}
