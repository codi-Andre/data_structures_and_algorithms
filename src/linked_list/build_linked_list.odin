package linked_list

import "core:log"
build_linked_list :: proc(
	values: []$T,
	allocator := context.allocator,
	loc := #caller_location,
) -> [dynamic]^List_Node(T) {
	list := make([dynamic]^List_Node(T), len(values), allocator, loc)
	dummy: ^List_Node(T)

	#reverse for val, i in values {
		node := new(List_Node(T), allocator, loc)
		node.val = val
		node.next = dummy
		dummy = node
		list[i] = node
	}

	return list
}
