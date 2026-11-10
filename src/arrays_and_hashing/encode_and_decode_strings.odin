package arrays_and_hashing

import "core:fmt"
import "core:strconv"

// Time complexity: O(m + n) | Space complexity: O(m + n)

encode_and_decode :: proc {
	encode,
	decode,
}

@(private = "file")
encode :: proc(strs: []string) -> (decoded: string) {
	for str in strs {
		if len(str) == 0 do continue
		decoded = fmt.tprintf("%v%v#%v", decoded, len(str), str)
	}
	return
}

@(private = "file")
decode :: proc(
	str: string,
	allocator := context.allocator,
	loc := #caller_location,
) -> [dynamic]string {
	decoded := make([dynamic]string, allocator, loc)
	if len(str) == 0 do append(&decoded, "")

	i, j: int
	for i < len(str) {
		j = i
		for str[j] != '#' do j += 1
		length, _ := strconv.parse_int(str[i:j], 10)
		i = j + 1
		append(&decoded, str[i:i + length])
		i += length
	}
	return decoded
}
