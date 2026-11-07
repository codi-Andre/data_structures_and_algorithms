package arrays_and_hashing

// Time complexity: O(n + m) | Space complexity: O(n)

two_sum :: proc(nums: []int, target: int) -> [2]int {
	set := make(map[int]int)
	defer delete(set)

	for num, i in nums {
		sum := target - num
		if sum in set {
			return [2]int{set[sum],i}
		}
		set[num] = i
	}
	return [2]int{-1,-1}
}
