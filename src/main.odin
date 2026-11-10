package main

import "core:mem"
import "core:fmt"

main :: proc() {
	when ODIN_DEBUG {
		track: mem.Tracking_Allocator
		mem.tracking_allocator_init(&track, context.allocator)
		context.allocator = mem.tracking_allocator(&track)

		defer {
			if len(track.allocation_map) > 0 {
				fmt.eprintf("=== %v allocations not freed: ===\n", len(track.allocation_map))
				for _, entry in track.allocation_map {
					fmt.eprintf("- %v bytes @ %v\n", entry.size, entry.location)
				}
			}
			mem.tracking_allocator_destroy(&track)
		}
	}

	ints := make([]int, 10)
	val := '1' - '1'
	integer: int
	set: bit_set['a'..='z']

	fmt.println("Hello world!")
	fmt.printfln("%v", ints)
	fmt.printfln("%d", val)
	fmt.println(size_of(set))
}
