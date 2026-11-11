package sliding_window

// Time complexity: O(n) | Space complexity: O(1)

permutation_in_string :: proc(s1, s2: string) -> bool {
	if len(s1) > len(s2) do return false

	count_s1: [26]int
	count_s2: [26]int
	for i := 0; i < len(s1); i += 1 {
		count_s1[s1[i] - 'a'] += 1
		count_s2[s2[i] - 'a'] += 1
	}

	l, r := 0, len(s1)
	for r < len(s2) {
		if count_s1 == count_s2 do return true
		count_s2[s2[r] - 'a'] += 1
		count_s2[s2[l] - 'a'] -= 1
		l += 1
		r += 1
	}
	return false
}
