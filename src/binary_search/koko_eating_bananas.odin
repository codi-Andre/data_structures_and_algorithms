package binary_search

import "core:slice"

// Time complexity: O(n log m) | Space complexity: O(1)

min_eating_speed :: proc(piles: []int, h: int) -> int {
	low, high := 1, slice.max(piles)
	get_time_spent :: proc(piles: []int, speed: int) -> (time_spent: int) {
		for pile in piles {
			time_spent += (pile + speed - 1) / speed
		}
		return
	}

	for low < high {
		mid := low + (high - low) / 2
		time_spent := get_time_spent(piles, mid)
		if time_spent <= h {
			high = mid
		} else {
			low = mid + 1
		}
	}
	return low
}
