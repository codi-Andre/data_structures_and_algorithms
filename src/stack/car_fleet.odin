package stack

import "core:slice"

// Time complexity: O (n log n) | Space complexity: O (n)

car_fleet :: proc(target: int, position, speed: []int) -> int {
	stack, fleet := make([dynamic]f32), make([dynamic]int, len(position))
	defer {
		delete(stack)
		delete(fleet)
	}
	for &car, pos in fleet {
		car = pos
	}

	position := position
	slice.sort_by_with_data(fleet[:], proc(a, b: int, user_data: rawptr) -> bool {
			fleet := (^[]int)(user_data)^
			return fleet[a] > fleet[b]
		}, &position)

	for car in fleet {
		time := f32(target - position[car]) / f32(speed[car])
		if len(stack) > 0 && stack[len(stack) - 1] >= time do continue
		append(&stack, time)
	}
	return len(stack)
}
