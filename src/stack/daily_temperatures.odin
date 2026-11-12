package stack

// Time complexity: O(n) | Auxiliary space complexity: O(n)

daily_temperatures :: proc(
	temperatures: []int,
	allocator := context.allocator,
	loc := #caller_location,
) -> [dynamic]int {
	result := make([dynamic]int, len(temperatures), allocator, loc)
	stack := make([dynamic]int)
	defer delete(stack)

	for temp, day in temperatures {
		for len(stack) > 0 && temperatures[stack[len(stack) - 1]] < temp {
			past_day := pop(&stack)
			result[past_day] = day - past_day
		}
		append(&stack, day)
	}
	return result
}
