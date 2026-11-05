package linked_list

List_Node :: struct($T: typeid){
	val: T,
	next: ^List_Node(T)
}
