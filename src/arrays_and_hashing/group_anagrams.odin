package arrays_and_hashing

// Time complexity: O(m * n) | Space complexity: O(m)

group_anagrams :: proc(strs: []string, allocator := context.allocator, loc := #caller_location) -> [dynamic][dynamic]string {
	anagrams := make([dynamic][dynamic]string, allocator, loc)
	groups := make(map[[26]int][dynamic]string)
	defer delete(groups)

	get_hash :: proc(str: string) -> [26]int {
		hash := [26]int{}
		for char in str {
			hash[char - 'a'] += 1
		}
		return hash
	}

	for word in strs {
		hash := get_hash(word)
		if hash not_in groups {
			groups[hash] = make([dynamic]string, allocator, loc)
		}
		append(&groups[hash], word)
	}

	for _, group in groups {
		append(&anagrams, group)
	}
	return anagrams
}
