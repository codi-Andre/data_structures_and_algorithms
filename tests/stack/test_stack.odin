package test_stack

import "../../src/stack"
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
