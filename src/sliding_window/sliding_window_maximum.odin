package sliding_window

// Time complexity: O(n) | Space complexity: O(n)

import "core:container/queue"
max_sliding_window :: proc(
	nums: []int,
	k: int,
	allocator := context.allocator,
	loc := #caller_location,
) -> [dynamic]int {
	max_window := make([dynamic]int, len(nums) - k + 1, allocator, loc)
	q: queue.Queue(int)
	queue.init(&q)
	defer queue.destroy(&q)

	l, r: int
	for r < len(nums) {
		for queue.len(q) > 0 && nums[queue.back(&q)] < nums[r] do queue.pop_back(&q)
		queue.push_back(&q, nums[r])
		if queue.front(&q) < l do queue.pop_front(&q)

		if r - l + 1 >= k {
			max_window[l] = nums[queue.front(&q)]
			l += 1
		}
		r += 1
	}
	return max_window
}
