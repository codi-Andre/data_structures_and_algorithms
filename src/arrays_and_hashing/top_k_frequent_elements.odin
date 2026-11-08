package arrays_and_hashing

// Time complexity: O(n) | Space complexity: O(n)

top_k_frequent_elements :: proc(nums: []int, $k: int) -> (top_k: [dynamic; k]int) {
	count, buckets := make(map[int]int), make([dynamic][dynamic]int, len(nums) + 1)
	defer {
		for bucket in buckets {
			delete(bucket)
		}
		delete(buckets)
		delete(count)
	}

	for num in nums {
		count[num] += 1
	}

	for num, freq in count {
		append(&buckets[freq], num)
	}

	#reverse for bucket in buckets {
		if len(top_k) >= k do break
		append(&top_k, ..bucket[:])
	}
	return
}
