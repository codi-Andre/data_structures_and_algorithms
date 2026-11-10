package binary_search

// Time complexity: O(log n) | Space complexity: O(1)

binary_search :: proc(nums: []int, target: int) -> int {
	l, r := 0, len(nums) - 1

	for l <= r {
		m := (l + r) / 2
		if nums[m] > target {
			r = m - 1
		} else if nums[m] < target {
			l = m + 1
		} else {
			return m
		}
	}
	return -1
}
