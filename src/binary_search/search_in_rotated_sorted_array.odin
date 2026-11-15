package binary_search

// Time complexity: O(log n) | Space complexity: O(1)

search_in_rotated_sorted_array :: proc(nums: []int, target: int) -> int {
	l, r := 0, len(nums) - 1
	for l <= r {
		m := l + (r - l) / 2
		if target == nums[m] do return m

		if nums[l] <= nums[m] {
			if target < nums[l] || target > nums[m] {
				l = m + 1
			} else {
				r = m - 1
			}
		} else {
			if target < nums[m] || target > nums[r] {
				r = m - 1
			} else {
				l = m + 1
			}
		}
	}
	return -1
}
