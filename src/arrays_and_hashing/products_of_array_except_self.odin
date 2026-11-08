package arrays_and_hashing

// Time complexity: O(n) | Space complexity: O(n)

products_of_array_except_self :: proc(nums: []int, allocator := context.allocator, loc := #caller_location) -> [dynamic]int {
	product := make([dynamic]int, len(nums))
	prefix := 1
	for num, i in nums {
		product[i] = prefix
		prefix *= num
	}
	prefix = 1
	#reverse for num, i in nums {
		product[i] *= prefix
		prefix *= num
	}
	return product
}
