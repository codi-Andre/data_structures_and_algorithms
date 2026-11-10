package test_sliding_window

import "../../src/sliding_window"
import "core:testing"
import "core:time"

@(test)
test_best_time_to_buy_and_sell_stocks :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	testing.expect_value(t, sliding_window.max_profit({10, 1, 5, 6, 7, 1}), 6)
	testing.expect_value(t, sliding_window.max_profit({10, 8, 7, 5, 2}), 0)
}

@(test)
test_longest_substring_without_repeating_characters :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	testing.expect_value(t, sliding_window.length_of_longest_substring("zxyzxyz"), 3)
	testing.expect_value(t, sliding_window.length_of_longest_substring("xxxx"), 1)
	testing.expect_value(t, sliding_window.length_of_longest_substring("pwwkew"), 3)
	testing.expect_value(t, sliding_window.length_of_longest_substring(" "), 1)
	testing.expect_value(t, sliding_window.length_of_longest_substring("tmmzuxt"), 5)
}

@(test)
test_longest_repeating_character_replacement :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	testing.expect_value(t, sliding_window.longest_repeating_character_replacement("XYYX", 2), 4)
	testing.expect_value(
		t,
		sliding_window.longest_repeating_character_replacement("AAABABB", 1),
		5,
	)
}
