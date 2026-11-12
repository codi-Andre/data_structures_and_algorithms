package sliding_window

// Time complexity: O(m + n) | Space complexity: O(k)

minimum_window_substring :: proc(s, t: string) -> (substring: string) {
	if len(s) < len(t) do return

	s_count, t_count := make(map[byte]int), make(map[byte]int)
	defer {
		delete(s_count)
		delete(t_count)
	}
	for i := 0; i < len(t); i += 1 {
		t_count[t[i]] += 1
	}

	matches, start, window := 0, 0, max(int)
	l, r: int
	for r < len(s) {
		s_count[s[r]] += 1
		if s[r] in t_count && s_count[s[r]] == t_count[s[r]] do matches += 1

		for matches == len(t_count) {
			if window > r - l + 1 {
				window = r - l + 1
				start = l
			}
			s_count[s[l]] -= 1
			if s[l] in t_count && s_count[s[l]] < t_count[s[l]] do matches -= 1
			l += 1
		}
		r += 1
	}
	substring = window == max(int) ? "" : s[start:start + window]
	return
}
