package test_sliding_window

import "core:testing"
import "../../src/sliding_window"

@(test)
test_best_time_to_buy_and_sell_stocks :: proc(t: ^testing.T) {
	testing.expect_value(t, sliding_window.max_profit({10,1,5,6,7,1}), 6)
	testing.expect_value(t, sliding_window.max_profit({10,8,7,5,2}), 0)
}
