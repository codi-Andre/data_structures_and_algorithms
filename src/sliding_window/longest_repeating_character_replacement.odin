package sliding_window

// Time complexity: O(n) | Space complexity: O(m)

longest_repeating_character_replacement :: proc(s: string, k: int) -> (longest: int) {
	count, freq := make(map[byte]int), 0
	defer delete(count)

	l, r: int
	for r < len(s) {
		count[s[r]] += 1
		freq = max(freq, count[s[r]])

		if (r - l + 1) - freq > k {
			longest = max(freq + k, longest)
			count[s[l]] -= 1
			l += 1
		}
		r += 1
	}
	longest = max((r - l), longest)
	return
}
