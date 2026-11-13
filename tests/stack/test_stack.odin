package test_stack

import "../../src/stack"
import "core:slice"
import "core:testing"
import "core:time"

@(test)
test_valid_parenthesis :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	testing.expect_value(t, stack.is_valid_parenthesis("[]"), true)
	testing.expect_value(t, stack.is_valid_parenthesis("([{}])"), true)
	testing.expect_value(t, stack.is_valid_parenthesis("[(])"), false)
}

@(test)
test_min_stack :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	s: stack.Min_Stack
	stack.init(&s)
	defer stack.destroy(&s)

	stack.push_back(&s, 1)
	stack.push_back(&s, 2)
	stack.push_back(&s, 0)

	testing.expect_value(t, stack.get_min(&s), 0)

	stack.pop_back(&s)

	testing.expect_value(t, stack.top(&s), 2)
	testing.expect_value(t, stack.get_min(&s), 1)
}

@(test)
test_evaluate_reverse_polish_notation :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	testing.expect_value(
		t,
		stack.evaluate_reverse_polish_notation({"1", "2", "+", "3", "*", "4", "-"}),
		5,
	)
}

@(test)
test_daily_temperatures :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	output1 := stack.daily_temperatures({30, 38, 30, 36, 35, 40, 28})
	output2 := stack.daily_temperatures({22, 21, 20})
	defer {
		delete(output1)
		delete(output2)
	}

	testing.expect(t, slice.equal(output1[:], {1, 4, 1, 2, 1, 0, 0}))
	testing.expect(t, slice.equal(output2[:], {0, 0, 0}))
}

@(test)
test_car_fleet :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	testing.expect_value(t, stack.car_fleet(10, {1, 4}, {3, 2}), 1)
	testing.expect_value(t, stack.car_fleet(10, {4, 1, 0, 7}, {2, 2, 1, 1}), 3)
	testing.expect_value(t, stack.car_fleet(10, {6, 8}, {3, 2}), 2)
}

@(test)
test_largest_rectangle_in_histogram :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	testing.expect_value(t, stack.largest_rectangle_in_histogram({7, 1, 7, 2, 2, 4}), 8)
	testing.expect_value(t, stack.largest_rectangle_in_histogram({1, 3, 7}), 7)
}
