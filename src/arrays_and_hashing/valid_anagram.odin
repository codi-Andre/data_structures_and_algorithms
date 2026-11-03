package arrays_and_hashing

// Time complexity: O(n + m) | Space complexity: O(1)

is_anagram :: proc(s, t: string) -> bool {
	if len(s) != len(t) do return false

	count := [26]int{}
	for i := 0; i < len(s); i += 1 {
		count[s[i] - 'a'] += 1
		count[t[i] - 'a'] -= 1
	}

	for num in count {
		if num != 0 do return false
	}
	return true
}
