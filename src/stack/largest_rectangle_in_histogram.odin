package stack


largest_rectangle_in_histogram :: proc(heights: []int) -> (max_area: int) {
	stack := make([dynamic][2]int)
	defer delete(stack)

	for height, x in heights {
		width := x
		for len(stack) > 0 && stack[len(stack) - 1].y > height {
			rect := pop(&stack)
			area := (width - rect.x) * rect.y
			max_area = max(max_area, area)
			width = rect.x
		}
		append(&stack, {width, height})
	}

	for len(stack) > 0 {
		rect := pop(&stack)
		area := (len(heights) - rect.x) * rect.y
		max_area = max(max_area, area)
	}
	return
}
