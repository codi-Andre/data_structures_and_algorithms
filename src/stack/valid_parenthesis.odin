#+feature dynamic-literals

package stack

import "core:container/queue"

// Time complexity: O(n) | Space complexity: O(n)

is_valid_parenthesis :: proc(s: string) -> bool {
	pairs := map[rune]rune{
		')' = '(',
		']' = '[',
		'}' = '{',
	}
	q: queue.Queue(rune)
	queue.init(&q)
	defer {
		delete(pairs)
		queue.destroy(&q)
	}

	for p in s {
		if queue.len(q) > 0 && queue.back(&q) == pairs[p] {
			queue.pop_back(&q)
			continue
		}
		queue.push_back(&q, p)
	}
	return queue.len(q) == 0
}
