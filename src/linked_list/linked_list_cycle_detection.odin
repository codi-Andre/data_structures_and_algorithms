package linked_list

// Time complexity: O(n) | Space complexity: O(1)

has_cycle :: proc(head: ^List_Node($T)) -> bool {
	slow, fast := head, head
	for fast != nil && fast.next != nil {
		slow = slow.next
		fast = fast.next.next
		if slow == fast do return true
	}
	return false
}
