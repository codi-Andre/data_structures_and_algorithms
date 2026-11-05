package linked_list

// Time complexity: O(n) | Space complexity: O(1)

reverse_list :: proc(head: ^List_Node(int)) -> (tail: ^List_Node(int)) {
	head := head
	for head != nil {
		node := head.next
		head.next = tail
		tail = head
		head = node
	}
	return
}
