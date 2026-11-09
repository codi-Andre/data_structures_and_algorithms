package arrays_and_hashing

// Time complexity: O(n) | Space complexity: O(n)

longest_consecutive_sequence :: proc(nums: []int) -> (longest: int) {
	set := make(map[int]int)
	defer delete(set)

	for num in nums {
		if num in set do continue

		set[num] = set[num - 1] + set[num + 1] + 1
		set[num - set[num - 1]] = set[num]
		set[num + set[num + 1]] = set[num]

		if set[num] > longest do longest = set[num]
	}
	return
}
