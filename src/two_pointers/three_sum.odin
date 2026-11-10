package two_pointers

import "core:slice"

// Time complexity: O(n²) | Auxiliary space complexity: O(1)

three_sum :: proc(
	nums: []int,
	allocator := context.allocator,
	loc := #caller_location,
) -> [dynamic][3]int {
	triples := make([dynamic][3]int, allocator, loc)
	slice.sort(nums)

	for i := 0; i < len(nums); i += 1 {
		if nums[i] > 0 do break
		if i > 0 && nums[i] == nums[i - 1] do continue
		j, k := i + 1, len(nums) - 1

		for j < k {
			sum := nums[i] + nums[j] + nums[k]
			if sum > 0 {
				k -= 1
			} else if sum < 0 {
				j += 1
			} else {
				append(&triples, [3]int{nums[i], nums[j], nums[k]})
				j += 1
				k -= 1
				for j < k && nums[j] == nums[j - 1] do j += 1
			}
		}
	}
	return triples
}
