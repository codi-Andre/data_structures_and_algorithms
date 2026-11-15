package binary_search

// Time complexity: O(m + n) | Space complexity: O(m + n)

median_of_two_sorted_arrays :: proc(nums1, nums2: []int) -> (median: f32) {
	nums3 := make([]int, len(nums1) + len(nums2))
	defer delete(nums3)
	i, j, k: int

	for i < len(nums1) && j < len(nums2) {
		if nums1[i] <= nums2[j] {
			nums3[k] = nums1[i]
			i += 1
			k += 1
		} else {
			nums3[k] = nums2[j]
			j += 1
			k += 1
		}
	}
	for i < len(nums1) {
		nums3[k] = nums1[i]
		i += 1
		k += 1
	}
	for j < len(nums2) {
		nums3[k] = nums2[j]
		j += 1
		k += 1
	}
	m := (len(nums3) - 1) / 2
	median = (len(nums3) - 1) % 2 == 0 ? f32(nums3[m]) : f32(nums3[m] + nums3[m + 1]) / 2.0
	return
}
