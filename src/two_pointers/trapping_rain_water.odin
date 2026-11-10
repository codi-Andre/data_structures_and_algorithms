package two_pointers

// Time complexity: O(n) | Space complexity: O(1)

trapping_rain_water :: proc(height: []int) -> (max_volume: int) {
	l, r := 0, len(height) - 1
	l_wall, r_wall := height[l], height[r]
	for l < r {
		if l_wall < r_wall {
			l += 1
			l_wall = max(l_wall, height[l])
			max_volume += l_wall - height[l]
		} else {
			r -= 1
			r_wall = max(r_wall, height[r])
			max_volume += r_wall - height[r]
		}
	}
	return
}
