package linked_list

// Time complexity: O(n) | Space complexity: O(1)

reorder_list :: proc(head: ^List_Node($T)) {
	slow, fast := head, head
	first, second: ^List_Node(T)

	for fast != nil && fast.next != nil {
		slow = slow.next
		fast = fast.next.next
	}

	second = slow.next
	slow.next = nil
	second = reverse_list(second)
	first = head
	for first != nil && second != nil {
		temp := first.next
		first.next = second
		first = temp
		temp = second.next
		second.next = first
		second = temp
	}
}
