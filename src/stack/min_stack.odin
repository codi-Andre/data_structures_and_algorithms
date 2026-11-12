package stack

// Time complexity: O(1) | Space complexity: O(n)

Min_Stack :: struct {
	stack: [dynamic]int,
	min:   int,
}

init :: proc(s: ^Min_Stack, allocator := context.allocator, loc := #caller_location) {
	clear(&s.stack)
	s.stack = make([dynamic]int, allocator, loc)
	s.min = max(int)
}

destroy :: proc(s: ^Min_Stack) {
	delete(s.stack)
}

push_back :: proc(s: ^Min_Stack, val: int) {
	if len(s.stack) == 0 {
		append(&s.stack, 0)
		s.min = val
	} else {
		append(&s.stack, val - s.min)
		if val < s.min do s.min = val
	}
}

pop_back :: proc(s: ^Min_Stack) {
	if len(s.stack) == 0 do return
	last := pop(&s.stack)
	if last < 0 do s.min -= last
}

top :: proc(s: ^Min_Stack) -> (val: int) {
	val = s.stack[len(s.stack) - 1]
	if val > 0 {
		return val + s.min
	}
	return s.min
}

get_min :: proc(s: ^Min_Stack) -> int {
	return s.min
}
