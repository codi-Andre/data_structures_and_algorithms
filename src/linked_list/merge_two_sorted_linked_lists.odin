package linked_list

// Time complexity: O(m + n) | Space complexity: O(1)

merge_two_sorted_linked_lists :: proc(list1, list2: ^List_Node(int)) -> ^List_Node(int) {
	list1, list2 := list1, list2
	head := &List_Node(int){}
	node := head

	for list1 != nil && list2 != nil {
		if list1.val <= list2.val {
			node.next = list1
			list1 = list1.next
		} else {
			node.next = list2
			list2 = list2.next
		}
		node = node.next
	}
	node.next = list1
	if list1 == nil {
		node.next = list2
	}
	return head.next
}
