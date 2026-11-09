package two_pointers

// Time complexity: O(n) | Space complexity: O(1)

container_with_most_water :: proc(heights: []int) -> (max_area: int) {
	l, r := 0, len(heights) - 1
	for l < r {
		area := (r - l) * min(heights[l], heights[r])
		if area > max_area do max_area = area

		if heights[l] > heights[r] {
			r -= 1
		} else {
			l += 1
		}
	}
	return
}
