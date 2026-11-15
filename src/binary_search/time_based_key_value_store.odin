package binary_search

// Time complexity: O(log n) | Space complexity: O(m * n)

Time_Map :: struct {
	store: map[string][dynamic]Time_Map_Val,
}

Time_Map_Val :: struct {
	val:       string,
	timestamp: int,
}

time_map_init :: proc(tm: ^Time_Map, allocator := context.allocator, loc := #caller_location) {
	clear(&tm.store)
	tm.store = make(map[string][dynamic]Time_Map_Val, allocator, loc)
}

time_map_destroy :: proc(tm: ^Time_Map) {
	for _, val in tm.store {
		delete(val)
	}
	delete(tm.store)
}

time_map_get :: proc(tm: ^Time_Map, key: string, timestamp: int) -> (val: string) {
	if key not_in tm.store do return
	buckets, l, r := tm.store[key], 0, len(tm.store[key]) - 1

	for l <= r {
		m := l + (r - l) / 2
		if buckets[m].timestamp <= timestamp {
			val = buckets[m].val
			l = m + 1
		} else {
			r = m - 1
		}
	}
	return
}

time_map_set :: proc(
	tm: ^Time_Map,
	key: string,
	val: string,
	timestamp: int,
	allocator := context.allocator,
	loc := #caller_location,
) {
	if key not_in tm.store {
		tm.store[key] = make([dynamic]Time_Map_Val)
	}
	append(&tm.store[key], {val, timestamp})
}
