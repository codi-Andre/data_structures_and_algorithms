package sliding_window

// Time complexity: O(n) | Space complexity: O(m)

length_of_longest_substring :: proc(s: string) -> (longest: int) {
	set := make(map[byte]int)
	defer delete(set)

	l, r: int
	for r < len(s) {
		if s[r] in set {
			longest = max(longest, r - l)
			l = max(set[s[r]] + 1, l)
		}
		set[s[r]] = r
		r += 1
	}
	longest = max(longest, r - l)
	return
}
